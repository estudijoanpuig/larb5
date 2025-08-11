<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Faker\Factory as Faker;

class VentesFicticiesSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create('ca_ES');

        // Funció per generar DNI fictici únic
        $generateDni = function () {
            $numbers = sprintf('%08d', rand(1000000, 99999999));
            $letters = 'TRWAGMYFPDXBNJZSQVHLCKE';
            return $numbers . $letters[$numbers % 23];
        };

        // 1. Categories de clients
        $categoriesClients = ['Particular', 'Empresa', 'VIP'];
        $categoriaClientIds = [];
        foreach ($categoriesClients as $cat) {
            $id = DB::table('wp_contabilidad_categoria_clientes')->insertGetId([
                'nombre_categoria' => $cat,
                'created_at' => now(),
                'updated_at' => now()
            ]);
            $categoriaClientIds[] = $id;
        }

        // 2. Categories de productes
        $categoriesProductes = ['Electrònics', 'Roba', 'Aliments', 'Llibres'];
        $categoriaProductIds = [];
        foreach ($categoriesProductes as $cat) {
            $id = DB::table('wp_contabilidad_categoria_productos')->insertGetId([
                'nombre_categoria' => $cat,
                'created_at' => now(),
                'updated_at' => now()
            ]);
            $categoriaProductIds[] = $id;
        }

        // 3. Clients (10 ficticis)
        $clientsIds = [];
        for ($i = 1; $i <= 10; $i++) {
            $nif = $generateDni();
            $id = DB::table('wp_contabilidad_clientes')->insertGetId([
                'nombre' => $faker->name,
                'direccion' => $faker->address,
                'nif' => $nif,
                'telefono' => $faker->phoneNumber,
                'email' => $faker->unique()->email,
                'id_categoria_cliente' => $faker->randomElement($categoriaClientIds),
                'img' => "client{$i}.jpg",
                'notas' => 'Client fictici generat.',
                'created_at' => now(),
                'updated_at' => now()
            ]);
            $clientsIds[] = $id;
        }

        // 4. Empleats (5 ficticis)
        $empleatsIds = [];
        for ($i = 1; $i <= 5; $i++) {
            $nif = $generateDni();
            $id = DB::table('wp_contabilidad_empleados')->insertGetId([
                'nombre' => $faker->name,
                'nif' => $nif,
                'direccion' => $faker->address,
                'telefono' => $faker->phoneNumber,
                'email' => $faker->unique()->email,
                'created_at' => now(),
                'updated_at' => now()
            ]);
            $empleatsIds[] = $id;
        }

        // 5. Proveïdors (5 ficticis)
        for ($i = 1; $i <= 5; $i++) {
            $nif = $generateDni();
            DB::table('wp_contabilidad_proveedores')->insert([
                'nombre' => $faker->company,
                'nif' => $nif,
                'direccion' => $faker->address,
                'telefono' => $faker->phoneNumber,
                'email' => $faker->unique()->email,
                'created_at' => now(),
                'updated_at' => now()
            ]);
        }

        // 6. Productes (20 ficticis)
        $productesIds = [];
        for ($i = 1; $i <= 20; $i++) {
            $id = DB::table('wp_contabilidad_productos')->insertGetId([
                'nombre' => $faker->words(3, true),
                'img' => "product{$i}.jpg",
                'video' => rand(0, 1) ? "product{$i}.mp4" : null,
                'id_categoria_producto' => $faker->randomElement($categoriaProductIds),
                'descripcion' => $faker->sentence,
                'protocol' => 'Protocol estàndard',
                'precio' => $faker->randomFloat(2, 10, 500),
                'stock' => rand(10, 100),
                'created_at' => now(),
                'updated_at' => now()
            ]);
            $productesIds[] = $id;
        }

        // 7. Vendes fictícies per a 2024 i 2025
        $anys = [2024, 2025];
        foreach ($anys as $any) {
            $startDate = Carbon::create($any, 1, 1);
            $endDate = Carbon::create($any, 12, 31);

            while ($startDate->lte($endDate)) {
                $numVentes = rand(0, 5);
                $usedCombos = [];

                for ($v = 0; $v < $numVentes; $v++) {
                    $clientId = $faker->randomElement($clientsIds);
                    $empleatId = $faker->randomElement($empleatsIds);
                    $combo = $startDate->format('Y-m-d') . '-' . $clientId . '-' . $empleatId;

                    if (in_array($combo, $usedCombos)) continue;
                    $usedCombos[] = $combo;

                    $subtotal = 0;
                    $ivaPorcentaje = 21.00; // IVA estàndard del 21%
                    $ivaMonto = 0;
                    $total = 0;

                    $ventaId = DB::table('wp_contabilidad_ventas')->insertGetId([
                        'fecha' => $startDate->format('Y-m-d'),
                        'cliente_id' => $clientId,
                        'empleado_id' => $empleatId,
                        'subtotal' => 0,
                        'iva_porcentaje' => $ivaPorcentaje,
                        'iva_monto' => 0,
                        'total' => 0,
                        'notas' => 'Venda fictícia generada per a ' . $any,
                        'created_at' => now(),
                        'updated_at' => now()
                    ]);

                    $numDetalls = rand(1, 5);
                    for ($d = 0; $d < $numDetalls; $d++) {
                        $productId = $faker->randomElement($productesIds);
                        $quantitat = rand(1, 10);
                        $product = DB::table('wp_contabilidad_productos')->find($productId);
                        $precioUnitario = $product->precio;
                        $detallSubtotal = round($quantitat * $precioUnitario, 2);
                        $subtotal += $detallSubtotal;

                        DB::table('wp_contabilidad_detalles_venta')->insert([
                            'venta_id' => $ventaId,
                            'producto_id' => $productId,
                            'cantidad' => $quantitat,
                            'precio_unitario' => $precioUnitario,
                            'subtotal' => $detallSubtotal,
                            'created_at' => now(),
                            'updated_at' => now()
                        ]);
                    }

                    $ivaMonto = round($subtotal * ($ivaPorcentaje / 100), 2);
                    $total = $subtotal + $ivaMonto;

                    DB::table('wp_contabilidad_ventas')->where('id', $ventaId)->update([
                        'subtotal' => $subtotal,
                        'iva_monto' => $ivaMonto,
                        'total' => $total,
                        'updated_at' => now()
                    ]);
                }

                $startDate->addDay();
            }
        }
    }
}