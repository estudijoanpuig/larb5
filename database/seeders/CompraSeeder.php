<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Compra;
use App\Models\DetallCompra;
use Faker\Factory as Faker;

class CompraSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 0; $i < 20; $i++) {
            $subtotal = 0;
            $iva_monto = 0;

            $compra = Compra::create([
                'fecha' => $faker->dateTimeBetween('-1 year', 'now')->format('Y-m-d'),
                'proveedor_id' => $faker->numberBetween(1, 10), // 10 proveïdors
                'subtotal' => 0,
                'iva_monto' => 0,
                'total' => 0,
            ]);

            for ($j = 0; $j < $faker->numberBetween(1, 3); $j++) {
                $quantitat = $faker->numberBetween(1, 10);
                $preu_unitari = $faker->randomFloat(2, 10, 100);
                $subtotal_detall = $quantitat * $preu_unitari;
                $iva_detall = $subtotal_detall * 0.21;

                DetallCompra::create([
                    'compra_id' => $compra->id,
                    'producto_id' => $faker->numberBetween(1, 20), // 20 productes
                    'quantitat' => $quantitat,
                    'preu_unitari' => $preu_unitari,
                    'subtotal' => $subtotal_detall,
                    'iva_monto' => $iva_detall,
                ]);
            }

            $compra->calcularTotals();
        }
    }
}