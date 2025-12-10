<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Project;
use App\Models\Producto;
use App\Models\Cliente;
use App\Models\Proveidor;
use App\Models\Empleat;
use App\Models\CategoriaProducto;
use App\Models\Venta;
use App\Models\DetalleVenta;
use App\Models\Compra;
use App\Models\DetalleCompra;
use Carbon\Carbon;

class ContabilitatCompletaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // 1. BUIDAR TAULES
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        
        DetalleVenta::truncate();
        Venta::truncate();
        DetalleCompra::truncate();
        Compra::truncate();
        Producto::truncate();
        
        // Eliminar constraint única per permetre múltiples vendes mateix dia
        try {
            DB::statement('ALTER TABLE wp_contabilidad_ventas DROP INDEX unique_venta');
        } catch (\Exception $e) {
            // Ja no existeix, continuar
        }
        
        try {
            DB::statement('ALTER TABLE wp_contabilidad_compras DROP INDEX unique_compra');
        } catch (\Exception $e) {
            // Ja no existeix, continuar
        }
        
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
        
        $this->command->info('✓ Taules buidades');
        
        // 2. CONVERTIR PROJECTES EN PRODUCTES
        $projects = Project::all();
        $categoriaDefecto = CategoriaProducto::first()->id ?? 1;
        
        foreach ($projects as $project) {
            Producto::create([
                'nombre' => $project->name,
                'descripcion' => $project->description ?? $project->name,
                'precio' => 3000.00,
                'stock' => rand(5, 50),
                'id_categoria_producto' => $categoriaDefecto,
                'img' => $project->image,
                'video' => $project->url,
                'protocol' => null,
            ]);
        }
        
        $this->command->info('✓ ' . $projects->count() . ' projectes convertits en productes a 3000€');
        
        // 3. OBTENIR DADES NECESSÀRIES
        $productos = Producto::all();
        $clientes = Cliente::all();
        $proveidors = Proveidor::all();
        $empleats = Empleat::all();
        
        if ($productos->isEmpty() || $clientes->isEmpty() || $empleats->isEmpty()) {
            $this->command->error('ERROR: Necessites productes, clients i empleats a la base de dades');
            return;
        }
        
        // 4. GENERAR VENDES (2023, 2024, 2025)
        $this->command->info('Generant vendes...');
        
        $formesPagament = ['efectiu', 'targeta', 'bono', 'transferencia'];
        $ventaId = 1;
        
        // 2023: 100 vendes
        for ($i = 0; $i < 100; $i++) {
            $fecha = Carbon::create(2023, rand(1, 12), rand(1, 28))->format('Y-m-d');
            $cliente = $clientes->random();
            $empleado = $empleats->random();
            
            $numProductos = rand(1, 4);
            $subtotalVenta = 0;
            
            for ($j = 0; $j < $numProductos; $j++) {
                $producto = $productos->random();
                $cantidad = rand(1, 3);
                $precioUnitario = $producto->precio;
                $subtotal = $cantidad * $precioUnitario;
                
                DetalleVenta::create([
                    'venta_id' => $ventaId,
                    'producto_id' => $producto->id,
                    'cantidad' => $cantidad,
                    'precio_unitario' => $precioUnitario,
                    'subtotal' => $subtotal,
                ]);
                
                $subtotalVenta += $subtotal;
            }
            
            $ivaVenta = $subtotalVenta * 0.21;
            
            Venta::create([
                'id' => $ventaId,
                'fecha' => $fecha,
                'cliente_id' => $cliente->id,
                'empleado_id' => $empleado->id,
                'subtotal' => $subtotalVenta,
                'iva_porcentaje' => 21,
                'iva_monto' => $ivaVenta,
                'total' => $subtotalVenta + $ivaVenta,
                'notas' => $formesPagament[array_rand($formesPagament)],
            ]);
            
            $ventaId++;
        }
        
        $this->command->info('✓ 100 vendes generades per 2023');
        
        // 2024: 120 vendes
        for ($i = 0; $i < 120; $i++) {
            $fecha = Carbon::create(2024, rand(1, 12), rand(1, 28))->format('Y-m-d');
            $cliente = $clientes->random();
            $empleado = $empleats->random();
            
            $numProductos = rand(1, 4);
            $subtotalVenta = 0;
            
            for ($j = 0; $j < $numProductos; $j++) {
                $producto = $productos->random();
                $cantidad = rand(1, 3);
                $precioUnitario = $producto->precio;
                $subtotal = $cantidad * $precioUnitario;
                
                DetalleVenta::create([
                    'venta_id' => $ventaId,
                    'producto_id' => $producto->id,
                    'cantidad' => $cantidad,
                    'precio_unitario' => $precioUnitario,
                    'subtotal' => $subtotal,
                ]);
                
                $subtotalVenta += $subtotal;
            }
            
            $ivaVenta = $subtotalVenta * 0.21;
            
            Venta::create([
                'id' => $ventaId,
                'fecha' => $fecha,
                'cliente_id' => $cliente->id,
                'empleado_id' => $empleado->id,
                'subtotal' => $subtotalVenta,
                'iva_porcentaje' => 21,
                'iva_monto' => $ivaVenta,
                'total' => $subtotalVenta + $ivaVenta,
                'notas' => $formesPagament[array_rand($formesPagament)],
            ]);
            
            $ventaId++;
        }
        
        $this->command->info('✓ 120 vendes generades per 2024');
        
        // 2025: 80 vendes (fins novembre)
        for ($i = 0; $i < 80; $i++) {
            $fecha = Carbon::create(2025, rand(1, 11), rand(1, 28))->format('Y-m-d');
            $cliente = $clientes->random();
            $empleado = $empleats->random();
            
            $numProductos = rand(1, 4);
            $subtotalVenta = 0;
            
            for ($j = 0; $j < $numProductos; $j++) {
                $producto = $productos->random();
                $cantidad = rand(1, 3);
                $precioUnitario = $producto->precio;
                $subtotal = $cantidad * $precioUnitario;
                
                DetalleVenta::create([
                    'venta_id' => $ventaId,
                    'producto_id' => $producto->id,
                    'cantidad' => $cantidad,
                    'precio_unitario' => $precioUnitario,
                    'subtotal' => $subtotal,
                ]);
                
                $subtotalVenta += $subtotal;
            }
            
            $ivaVenta = $subtotalVenta * 0.21;
            
            Venta::create([
                'id' => $ventaId,
                'fecha' => $fecha,
                'cliente_id' => $cliente->id,
                'empleado_id' => $empleado->id,
                'subtotal' => $subtotalVenta,
                'iva_porcentaje' => 21,
                'iva_monto' => $ivaVenta,
                'total' => $subtotalVenta + $ivaVenta,
                'notas' => $formesPagament[array_rand($formesPagament)],
            ]);
            
            $ventaId++;
        }
        
        $this->command->info('✓ 80 vendes generades per 2025');
        
        // 5. GENERAR COMPRES
        if ($proveidors->isEmpty()) {
            $this->command->warn('No hi ha proveïdors, saltant generació de compres');
            return;
        }
        
        $this->command->info('Generant compres...');
        
        $compraId = 1;
        
        // 2023: 60 compres
        for ($i = 0; $i < 60; $i++) {
            $fecha = Carbon::create(2023, rand(1, 12), rand(1, 28))->format('Y-m-d');
            $proveidor = $proveidors->random();
            
            $numProductos = rand(1, 3);
            $subtotalCompra = 0;
            
            for ($j = 0; $j < $numProductos; $j++) {
                $producto = $productos->random();
                $cantidad = rand(5, 20);
                $precioUnitario = $producto->precio * 0.4; // Cost: 40% del preu de venda
                $subtotal = $cantidad * $precioUnitario;
                
                DetalleCompra::create([
                    'compra_id' => $compraId,
                    'producto_id' => $producto->id,
                    'cantidad' => $cantidad,
                    'precio_unitario' => $precioUnitario,
                    'subtotal' => $subtotal,
                ]);
                
                $subtotalCompra += $subtotal;
            }
            
            $ivaCompra = $subtotalCompra * 0.21;
            
            Compra::create([
                'id' => $compraId,
                'fecha' => $fecha,
                'proveedor_id' => $proveidor->id,
                'subtotal' => $subtotalCompra,
                'iva_porcentaje' => 21,
                'iva_monto' => $ivaCompra,
                'total' => $subtotalCompra + $ivaCompra,
                'notas' => 'Compra ' . $compraId,
            ]);
            
            $compraId++;
        }
        
        $this->command->info('✓ 60 compres generades per 2023');
        
        // 2024: 70 compres
        for ($i = 0; $i < 70; $i++) {
            $fecha = Carbon::create(2024, rand(1, 12), rand(1, 28))->format('Y-m-d');
            $proveidor = $proveidors->random();
            
            $numProductos = rand(1, 3);
            $subtotalCompra = 0;
            
            for ($j = 0; $j < $numProductos; $j++) {
                $producto = $productos->random();
                $cantidad = rand(5, 20);
                $precioUnitario = $producto->precio * 0.4;
                $subtotal = $cantidad * $precioUnitario;
                
                DetalleCompra::create([
                    'compra_id' => $compraId,
                    'producto_id' => $producto->id,
                    'cantidad' => $cantidad,
                    'precio_unitario' => $precioUnitario,
                    'subtotal' => $subtotal,
                ]);
                
                $subtotalCompra += $subtotal;
            }
            
            $ivaCompra = $subtotalCompra * 0.21;
            
            Compra::create([
                'id' => $compraId,
                'fecha' => $fecha,
                'proveedor_id' => $proveidor->id,
                'subtotal' => $subtotalCompra,
                'iva_porcentaje' => 21,
                'iva_monto' => $ivaCompra,
                'total' => $subtotalCompra + $ivaCompra,
                'notas' => 'Compra ' . $compraId,
            ]);
            
            $compraId++;
        }
        
        $this->command->info('✓ 70 compres generades per 2024');
        
        // 2025: 50 compres
        for ($i = 0; $i < 50; $i++) {
            $fecha = Carbon::create(2025, rand(1, 11), rand(1, 28))->format('Y-m-d');
            $proveidor = $proveidors->random();
            
            $numProductos = rand(1, 3);
            $subtotalCompra = 0;
            
            for ($j = 0; $j < $numProductos; $j++) {
                $producto = $productos->random();
                $cantidad = rand(5, 20);
                $precioUnitario = $producto->precio * 0.4;
                $subtotal = $cantidad * $precioUnitario;
                
                DetalleCompra::create([
                    'compra_id' => $compraId,
                    'producto_id' => $producto->id,
                    'cantidad' => $cantidad,
                    'precio_unitario' => $precioUnitario,
                    'subtotal' => $subtotal,
                ]);
                
                $subtotalCompra += $subtotal;
            }
            
            $ivaCompra = $subtotalCompra * 0.21;
            
            Compra::create([
                'id' => $compraId,
                'fecha' => $fecha,
                'proveedor_id' => $proveidor->id,
                'subtotal' => $subtotalCompra,
                'iva_porcentaje' => 21,
                'iva_monto' => $ivaCompra,
                'total' => $subtotalCompra + $ivaCompra,
                'notas' => 'Compra ' . $compraId,
            ]);
            
            $compraId++;
        }
        
        $this->command->info('✓ 50 compres generades per 2025');
        
        $this->command->info('');
        $this->command->info('========================================');
        $this->command->info('✓ SEEDING COMPLETAT AMB ÈXIT!');
        $this->command->info('========================================');
        $this->command->info('Productes: ' . Producto::count());
        $this->command->info('Vendes 2023: 100');
        $this->command->info('Vendes 2024: 120');
        $this->command->info('Vendes 2025: 80');
        $this->command->info('Compres 2023: 60');
        $this->command->info('Compres 2024: 70');
        $this->command->info('Compres 2025: 50');
        $this->command->info('========================================');
    }
}
