<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        $this->call([
            ProveidorSeeder::class,
            ProductoSeeder::class,
            CompraSeeder::class,
        ]);
    }
}