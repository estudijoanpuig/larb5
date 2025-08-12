<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Producto;
use Faker\Factory as Faker;

class ProductoSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 0; $i < 20; $i++) {
            Producto::create([
                'nombre' => $faker->word . ' ' . $faker->randomElement(['Pro', 'Plus', 'Standard']),
                'img' => $faker->imageUrl(200, 200, 'products'),
                'video' => null,
                'id_categoria_producto' => null, // Sense categories
                'descripcion' => $faker->sentence,
                'protocol' => $faker->optional()->word,
                'precio' => $faker->randomFloat(2, 5, 200),
                'stock' => $faker->numberBetween(0, 100),
            ]);
        }
    }
}