<?php

namespace App\Http\Controllers;

use App\Models\Venta;
use App\Models\DetalleVenta;
use App\Models\Cliente;
use App\Models\Empleat;
use App\Models\Producto;
use Illuminate\Http\Request;

class VentaController extends Controller
{
    public function index()
    {
        $ventas = Venta::with(['cliente', 'empleado', 'detalles.producto'])->orderBy('fecha', 'desc')->get();
        return view('comptabilitat.vendes.diari_vendes', compact('ventas'));
    }

    public function create()
    {
        $clientes = Cliente::all();
        $empleados = Empleat::all();
        $productos = Producto::all();
        return view('comptabilitat.vendes.create', compact('clientes', 'empleados', 'productos'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'fecha' => 'required|date',
            'cliente_id' => 'required|exists:wp_contabilidad_clientes,id',
            'iva_porcentaje' => 'required|numeric|min:0|max:100',
            'notas' => 'nullable|in:efectiu,targeta,bono,transferencia',
            'empleado_id' => 'required|exists:wp_contabilidad_empleados,id',
            'producto_id.*' => 'required|exists:wp_contabilidad_productos,id',
            'cantidad.*' => 'required|integer|min:1',
            'precio_unitario.*' => 'required|numeric|min:0',
            'subtotal_detalle.*' => 'required|numeric|min:0',
            'subtotal' => 'required|numeric|min:0',
            'iva_monto' => 'required|numeric|min:0',
            'total' => 'required|numeric|min:0',
        ]);

        $venta = Venta::create([
            'fecha' => $request->fecha,
            'cliente_id' => $request->cliente_id,
            'subtotal' => $request->subtotal,
            'iva_porcentaje' => $request->iva_porcentaje,
            'iva_monto' => $request->iva_monto,
            'total' => $request->total,
            'notas' => $request->notas,
            'empleado_id' => $request->empleado_id,
        ]);

        if ($request->has('producto_id')) {
            foreach ($request->producto_id as $key => $producto_id) {
                DetalleVenta::create([
                    'venta_id' => $venta->id,
                    'producto_id' => $producto_id,
                    'cantidad' => $request->cantidad[$key],
                    'precio_unitario' => $request->precio_unitario[$key],
                    'subtotal' => $request->subtotal_detalle[$key],
                ]);
            }
        }

        return redirect()->route('ventas.index')->with('success', 'Venda creada correctament.');
    }

    public function edit($id)
    {
        $venta = Venta::with('detalles')->findOrFail($id);
        $clientes = Cliente::all();
        $empleados = Empleat::all();
        $productos = Producto::all();
        return view('comptabilitat.vendes.edit', compact('venta', 'clientes', 'empleados', 'productos'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'fecha' => 'required|date',
            'cliente_id' => 'required|exists:wp_contabilidad_clientes,id',
            'iva_porcentaje' => 'required|numeric|min:0|max:100',
            'notas' => 'nullable|in:efectiu,targeta,bono,transferencia',
            'empleado_id' => 'nullable|exists:wp_contabilidad_empleados,id',
            'producto_id.*' => 'required|exists:wp_contabilidad_productos,id',
            'cantidad.*' => 'required|integer|min:1',
            'precio_unitario.*' => 'required|numeric|min:0',
            'subtotal_detalle.*' => 'required|numeric|min:0',
            'subtotal' => 'required|numeric|min:0',
            'iva_monto' => 'required|numeric|min:0',
            'total' => 'required|numeric|min:0',
        ]);

        $venta = Venta::findOrFail($id);
        $venta->update([
            'fecha' => $request->fecha,
            'cliente_id' => $request->cliente_id,
            'subtotal' => $request->subtotal,
            'iva_porcentaje' => $request->iva_porcentaje,
            'iva_monto' => $request->iva_monto,
            'total' => $request->total,
            'notas' => $request->notas,
            'empleado_id' => $request->empleado_id,
        ]);

        $venta->detalles()->delete();
        if ($request->has('producto_id')) {
            foreach ($request->producto_id as $key => $producto_id) {
                DetalleVenta::create([
                    'venta_id' => $venta->id,
                    'producto_id' => $producto_id,
                    'cantidad' => $request->cantidad[$key],
                    'precio_unitario' => $request->precio_unitario[$key],
                    'subtotal' => $request->subtotal_detalle[$key],
                ]);
            }
        }

        return redirect()->route('ventas.index')->with('success', 'Venda actualitzada correctament.');
    }

    public function destroy($id)
    {
        $venta = Venta::findOrFail($id);
        $venta->detalles()->delete();
        $venta->delete();
        return redirect()->route('ventas.index')->with('success', 'Venda eliminada correctament.');
    }
}