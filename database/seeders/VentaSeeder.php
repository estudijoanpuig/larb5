<?php

namespace Database\Seeders;

use App\Models\Cliente;
use App\Models\Empleat;
use App\Models\Producto;
use App\Models\Venta;
use App\Models\DetalleVenta;
use Illuminate\Database\Seeder;

class VentaSeeder extends Seeder
{
    public function run()
    {
        $cliente = Cliente::create(['nombre' => 'Client Test', 'nif' => '12345678A', 'id_categoria_cliente' => 1]);
        $empleado = Empleat::create(['nombre' => 'Empleat Test', 'nif' => '87654321B']);
        $producto = Producto::create(['nombre' => 'Producte Test', 'precio' => 10.00, 'id_categoria_producto' => 1]);

        $venta = Venta::create([
            'fecha' => now()->toDateString(),
            'cliente_id' => $cliente->id,
            'subtotal' => 10.00,
            'iva_porcentaje' => 21.00,
            'iva_monto' => 2.10,
            'total' => 12.10,
            'notas' => 'efectiu',
            'empleado_id' => $empleado->id,
        ]);

        DetalleVenta::create([
            'venta_id' => $venta->id,
            'producto_id' => $producto->id,
            'cantidad' => 1,
            'precio_unitario' => 10.00,
            'subtotal' => 10.00,
        ]);
    }
}