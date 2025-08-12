<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Carbon\Carbon;

class InformeController extends Controller
{
    public function index(Request $request)
    {
        // Obtenir filtres del formulari amb valors per defecte per l'últim any (2025)
        $any = $request->input('any', date('Y'));
        $dataInici = $request->input('data_inici', date('Y') . '-01-01');
        $dataFinal = $request->input('data_final', date('Y') . '-12-31');

        // Validar i ajustar dates
        try {
            $dataInici = Carbon::parse($dataInici)->startOfDay()->toDateString();
            $dataFinal = Carbon::parse($dataFinal)->endOfDay()->toDateString();
            // Assegurar que dataInici no sigui posterior a dataFinal
            if ($dataInici > $dataFinal) {
                $temp = $dataInici;
                $dataInici = $dataFinal;
                $dataFinal = $temp;
            }
        } catch (\Exception $e) {
            // Si les dates són invàlides, utilitzar valors per defecte per l'últim any
            $dataInici = date('Y') . '-01-01';
            $dataFinal = date('Y') . '-12-31';
        }

        // Condició per al filtre d'any
        $anyCondition = $any ? "AND YEAR(v.fecha) = ?" : "";
        $params = $any ? [$dataInici, $dataFinal, $any] : [$dataInici, $dataFinal];

        // 1. Vendes mensuals
        $vendesMensuals = DB::select("
            SELECT 
                YEAR(v.fecha) AS any,
                MONTH(v.fecha) AS mes,
                SUM(v.total) AS total_vendes
            FROM wp_contabilidad_ventas v
            WHERE v.fecha BETWEEN ? AND ? $anyCondition
            GROUP BY YEAR(v.fecha), MONTH(v.fecha)
            ORDER BY any, mes
        ", $params);

        $categoriesMensuals = [];
        $vendesDataMensuals = [];
        $mesos = [];
        $startYear = Carbon::parse($dataInici)->year;
        $endYear = Carbon::parse($dataFinal)->year;
        for ($any = $startYear; $any <= $endYear; $any++) {
            for ($mes = 1; $mes <= 12; $mes++) {
                $mesos["$any-$mes"] = date('M Y', mktime(0, 0, 0, $mes, 1, $any));
            }
        }

        foreach ($mesos as $key => $label) {
            $categoriesMensuals[] = $label;
            list($any, $mes) = explode('-', $key);
            $vendesDataMensuals[] = 0;

            foreach ($vendesMensuals as $venda) {
                if ($venda->any == $any && $venda->mes == $mes) {
                    $vendesDataMensuals[count($vendesDataMensuals) - 1] = (float)$venda->total_vendes;
                }
            }
        }

        // 2. Vendes per categoria de producte
        $vendesPerCategoria = DB::select("
            SELECT 
                cp.nombre AS categoria,
                SUM(dv.subtotal) AS total_vendes
            FROM wp_contabilidad_ventas v
            JOIN wp_contabilidad_detalles_venta dv ON v.id = dv.venta_id
            JOIN wp_contabilidad_productos p ON dv.producto_id = p.id
            JOIN wp_contabilidad_categoria_productos cp ON p.id_categoria_producto = cp.id
            WHERE v.fecha BETWEEN ? AND ? $anyCondition
            GROUP BY cp.id, cp.nombre
            ORDER BY total_vendes DESC
        ", $params);

        $categoriesProductes = [];
        $vendesDataProductes = [];
        foreach ($vendesPerCategoria as $categoria) {
            $categoriesProductes[] = $categoria->categoria;
            $vendesDataProductes[] = (float)$categoria->total_vendes;
        }

        // 3. Vendes per empleat (agrupades per mesos per apilat)
        $vendesPerEmpleat = DB::select("
            SELECT 
                e.nombre AS empleat,
                YEAR(v.fecha) AS any,
                MONTH(v.fecha) AS mes,
                SUM(v.total) AS total_vendes
            FROM wp_contabilidad_ventas v
            JOIN wp_contabilidad_empleados e ON v.empleado_id = e.id
            WHERE v.fecha BETWEEN ? AND ? $anyCondition
            GROUP BY e.id, e.nombre, YEAR(v.fecha), MONTH(v.fecha)
            ORDER BY any, mes, e.nombre
        ", $params);

        $empleats = DB::select("
            SELECT DISTINCT nombre AS empleat
            FROM wp_contabilidad_empleados
            ORDER BY nombre
        ");
        $empleats = array_column($empleats, 'empleat');

        $vendesDataEmpleats = [];
        foreach ($empleats as $empleat) {
            $data = [];
            foreach ($mesos as $key => $label) {
                list($any, $mes) = explode('-', $key);
                $data[] = 0;
                foreach ($vendesPerEmpleat as $venda) {
                    if ($venda->empleat == $empleat && $venda->any == $any && $venda->mes == $mes) {
                        $data[count($data) - 1] = (float)$venda->total_vendes;
                    }
                }
            }
            $vendesDataEmpleats[] = [
                'name' => $empleat,
                'data' => $data
            ];
        }

        // Llista d'anys per al filtre
        $anys = DB::select("
            SELECT DISTINCT YEAR(fecha) AS any
            FROM wp_contabilidad_ventas
            ORDER BY any
        ");
        $anys = array_column($anys, 'any');

        // Retornar la vista amb totes les dades
        return view('informes.index', [
            'categoriesMensuals' => $categoriesMensuals,
            'vendesDataMensuals' => $vendesDataMensuals,
            'categoriesProductes' => $categoriesProductes,
            'vendesDataProductes' => $vendesDataProductes,
            'categoriesEmpleats' => $categoriesMensuals, // Mateixes categories que vendes mensuals (per mesos)
            'vendesDataEmpleats' => $vendesDataEmpleats,
            'anys' => $anys,
            'anySeleccionat' => $any,
            'dataInici' => $dataInici,
            'dataFinal' => $dataFinal
        ]);
    }
}