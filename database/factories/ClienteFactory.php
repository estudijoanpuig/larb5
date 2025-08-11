<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Cliente;
use App\Models\CategoriaCliente;

class ClienteFactory extends Factory
{
    protected $model = Cliente::class;

    public function definition(): array
    {
        return [
            'nombre' => $this->faker->name(),
            'direccion' => $this->faker->address(),
            'nif' => $this->faker->unique()->regexify('[A-Z]{1}[0-9]{8}'),
            'telefono' => $this->faker->phoneNumber(),
            'email' => $this->faker->unique()->safeEmail(),
            'id_categoria_cliente' => 1,
            'img' => $this->faker->imageUrl(640, 480, 'people'),
            'notas' => $this->faker->sentence(),
        ];
    }
}