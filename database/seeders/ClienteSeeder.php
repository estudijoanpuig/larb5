<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\CategoriaCliente;
use App\Models\Cliente;

class ClienteSeeder extends Seeder
{
    public function run(): void
    {
        $categoria = CategoriaCliente::firstOrCreate(
            ['id' => 1],
            ['nombre_categoria' => 'Client de Prova']
        );

        Cliente::factory()->count(50)->create([
            'id_categoria_cliente' => $categoria->id,
        ]);
    }
}