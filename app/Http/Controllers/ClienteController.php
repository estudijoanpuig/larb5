<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use App\Models\CategoriaCliente;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;

class ClienteController extends Controller
{
    public function import(Request $request)
    {
        $request->validate([
            'csv_file' => 'required|file|mimes:csv,txt|max:2048',
        ]);

        try {
            ini_set('memory_limit', '256M');

            $file = $request->file('csv_file');
            $handle = fopen($file->path(), 'r');
            stream_filter_append($handle, 'convert.iconv.UTF-8/UTF-8//IGNORE');

            $headers = fgetcsv($handle, 0, ',');
            $totalRows = 0;
            $processedRows = 0;
            $skippedRows = 0;
            $errorRows = [];

            // Compta les files totals (excloent capçalera)
            $fileContent = file($file->path());
            $totalRows = count($fileContent) - 1;

            $indexFirstName = array_search('First Name', $headers);
            $indexMiddleName = array_search('Middle Name', $headers);
            $indexLastName = array_search('Last Name', $headers);
            $indexAddress = array_search('Address 1 - Formatted', $headers);
            $indexPhone = array_search('Phone 1 - Value', $headers);
            $indexEmail = array_search('E-mail 1 - Value', $headers);
            $indexNotes = array_search('Notes', $headers);
            $indexLabels = array_search('Labels', $headers);
            $indexPhoto = array_search('Photo', $headers);

            while (($row = fgetcsv($handle, 0, ',')) !== false) {
                // Combina i neteja el nom
                $nombre = trim(implode(' ', array_filter([
                    $row[$indexFirstName] ?? '',
                    $row[$indexMiddleName] ?? '',
                    $row[$indexLastName] ?? ''
                ])));
                $nombre = preg_replace('/[^\p{L}\p{N}\s]/u', '', $nombre);

                // Comprova si hi ha alguna dada útil
                $hasUsefulData = !empty($row[$indexPhone]) || !empty($row[$indexEmail]) || 
                                !empty($row[$indexAddress]) || !empty($row[$indexNotes]) || 
                                !empty($row[$indexLabels]) || !empty($row[$indexPhoto]);

                if (!$hasUsefulData) {
                    Log::warning("Fila saltada per estar completament buida: " . json_encode($row));
                    $skippedRows++;
                    continue;
                }

                // Si el nom és buit, assigna un nom per defecte
                if (empty($nombre)) {
                    $nombre = 'Client Desconegut ' . ($processedRows + 1);
                }
                $nombre = substr($nombre, 0, 100);

                // Busca NIF a Notes
                $nif = '';
                if (!empty($row[$indexNotes]) && preg_match('/NIF:\s*(\w+)/i', $row[$indexNotes], $matches)) {
                    $nif = substr($matches[1], 0, 20);
                }

                // Gestiona categories
                $categoriaNombre = !empty($row[$indexLabels]) ? trim($row[$indexLabels]) : '* myContacts';
                $categoriaNombre = preg_replace('/[^\p{L}\p{N}\s]/u', '', $categoriaNombre);
                $categoriaNombre = substr($categoriaNombre, 0, 255);
                try {
                    $categoria = CategoriaCliente::firstOrCreate(
                        ['nombre_categoria' => $categoriaNombre],
                        ['nombre_categoria' => $categoriaNombre]
                    );
                } catch (\Exception $e) {
                    Log::error("Error creant categoria '$categoriaNombre': " . $e->getMessage());
                    $errorRows[] = "Fila amb nom '$nombre': Error en categoria - " . $e->getMessage();
                    $skippedRows++;
                    continue;
                }

                // Neteja el telèfon
                $telefono = !empty($row[$indexPhone]) ? trim($row[$indexPhone]) : '';
                $telefono = preg_replace('/[^\p{N}\+\s]/u', '', $telefono);
                if (strpos($telefono, ' ::: ') !== false) {
                    $telefono = explode(' ::: ', $telefono)[0];
                }
                $telefono = substr($telefono, 0, 20);

                // Neteja l'email
                $email = !empty($row[$indexEmail]) ? trim($row[$indexEmail]) : '';
                $email = preg_replace('/[^a-zA-Z0-9@._-]/', '', $email);
                $email = substr($email, 0, 100);

                // Neteja l'adreça
                $direccion = !empty($row[$indexAddress]) ? trim($row[$indexAddress]) : '';
                $direccion = preg_replace('/[^\p{L}\p{N}\s,.-]/u', '', $direccion);

                // Gestiona la imatge
                $imgPath = '';
                if (!empty($row[$indexPhoto]) && filter_var($row[$indexPhoto], FILTER_VALIDATE_URL)) {
                    try {
                        $response = Http::withOptions([
                            'verify' => 'C:\Apache24\htdocs\larb5\cacert.pem', // Camí al cacert.pem
                        ])->get($row[$indexPhoto]);
                        if ($response->successful()) {
                            $originalName = pathinfo(parse_url($row[$indexPhoto], PHP_URL_PATH), PATHINFO_BASENAME) ?: 'photo_' . md5($nombre . microtime());
                            $extension = pathinfo($originalName, PATHINFO_EXTENSION) ?: 'jpg';
                            $baseName = pathinfo($originalName, PATHINFO_FILENAME);
                            $filename = $originalName;
                            $counter = 1;

                            while (Storage::disk('public')->exists('clientes/' . $filename)) {
                                $filename = $baseName . '_' . $counter . '.' . $extension;
                                $counter++;
                            }

                            Storage::disk('public')->put('clientes/' . $filename, $response->body());
                            $imgPath = 'clientes/' . $filename;
                        }
                    } catch (\Exception $e) {
                        Log::warning("Error descarregant imatge per $nombre: " . $e->getMessage());
                    }
                }

                // Neteja notes
                $notas = !empty($row[$indexNotes]) ? trim($row[$indexNotes]) : '';
                $notas = preg_replace('/[^\p{L}\p{N}\s,.-]/u', '', $notas);

                // Intenta crear el client
                try {
                    Cliente::create([
                        'nombre' => $nombre,
                        'direccion' => $direccion,
                        'nif' => $nif,
                        'telefono' => $telefono,
                        'email' => $email,
                        'id_categoria_cliente' => $categoria->id,
                        'img' => substr($imgPath, 0, 255),
                        'notas' => $notas,
                    ]);
                    $processedRows++;
                } catch (\Exception $e) {
                    Log::error("Error important fila: " . json_encode($row) . " - " . $e->getMessage());
                    $errorRows[] = "Fila amb nom '$nombre': " . $e->getMessage();
                    $skippedRows++;
                    continue;
                }
            }

            fclose($handle);

            $message = "Clients importats amb èxit! ($processedRows de $totalRows registres. Files saltades: $skippedRows)";
            if (!empty($errorRows)) {
                $message .= "\nErrors trobats:\n" . implode("\n", $errorRows);
            }

            return redirect()->back()->with('success', $message);
        } catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => 'Error en importar: ' . $e->getMessage()]);
        }
    }
}