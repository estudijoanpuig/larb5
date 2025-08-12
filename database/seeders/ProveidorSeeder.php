<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Proveidor;
use Faker\Factory as Faker;

class ProveidorSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 0; $i < 10; $i++) {
            Proveidor::create([
                'nombre' => $faker->company,
                'nif' => $faker->regexify('[A-Z]{1}[0-9]{8}'), // Exemple: B12345678
                'direccion' => $faker->address,
                'telefono' => $faker->phoneNumber,
                'email' => $faker->companyEmail,
            ]);
        }
    }
}