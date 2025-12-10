<?php

namespace App\Http\Controllers;

use App\Models\Compra;
use App\Models\DetalleCompra;
use App\Models\Proveidor;
use App\Models\Empleat;
use App\Models\Producto;
use Illuminate\Http\Request;

class CompraController extends Controller
{
    public function index()
    {
        $compras = Compra::with(['proveedor', 'empleado', 'detalles.producto'])->orderBy('fecha', 'desc')->get();
        return view('comptabilitat.compres.diari_compres', compact('compras'));
    }

    public function create()
    {
        $proveedores = Proveidor::all();
        $empleados = Empleat::all();
        $productos = Producto::all();
        return view('comptabilitat.compres.create', compact('proveedores', 'empleados', 'productos'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'fecha' => 'required|date',
            'proveedor_id' => 'required|exists:wp_contabilidad_proveedores,id',
            'iva_porcentaje' => 'required|numeric|min:0|max:100',
            'notas' => 'nullable|string',
            'empleado_id' => 'required|exists:wp_contabilidad_empleados,id',
            'producto_id.*' => 'required|exists:wp_contabilidad_productos,id',
            'cantidad.*' => 'required|integer|min:1',
            'precio_unitario.*' => 'required|numeric|min:0',
            'subtotal_detalle.*' => 'required|numeric|min:0',
            'subtotal' => 'required|numeric|min:0',
            'iva_monto' => 'required|numeric|min:0',
            'total' => 'required|numeric|min:0',
        ]);

        $compra = Compra::create([
            'fecha' => $request->fecha,
            'proveedor_id' => $request->proveedor_id,
            'subtotal' => $request->subtotal,
            'iva_porcentaje' => $request->iva_porcentaje,
            'iva_monto' => $request->iva_monto,
            'total' => $request->total,
            'notas' => $request->notas,
            'empleado_id' => $request->empleado_id,
        ]);

        if ($request->has('producto_id')) {
            foreach ($request->producto_id as $key => $producto_id) {
                DetalleCompra::create([
                    'compra_id' => $compra->id,
                    'producto_id' => $producto_id,
                    'cantidad' => $request->cantidad[$key],
                    'precio_unitario' => $request->precio_unitario[$key],
                    'subtotal' => $request->subtotal_detalle[$key],
                ]);
            }
        }

        return redirect()->route('compras.index')->with('success', 'Compra creada correctament.');
    }

    public function edit($id)
    {
        $compra = Compra::with('detalles')->findOrFail($id);
        $proveedores = Proveidor::all();
        $empleados = Empleat::all();
        $productos = Producto::all();
        return view('comptabilitat.compres.edit', compact('compra', 'proveedores', 'empleados', 'productos'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'fecha' => 'required|date',
            'proveedor_id' => 'required|exists:wp_contabilidad_proveedores,id',
            'iva_porcentaje' => 'required|numeric|min:0|max:100',
            'notas' => 'nullable|string',
            'empleado_id' => 'nullable|exists:wp_contabilidad_empleados,id',
            'producto_id.*' => 'required|exists:wp_contabilidad_productos,id',
            'cantidad.*' => 'required|integer|min:1',
            'precio_unitario.*' => 'required|numeric|min:0',
            'subtotal_detalle.*' => 'required|numeric|min:0',
            'subtotal' => 'required|numeric|min:0',
            'iva_monto' => 'required|numeric|min:0',
            'total' => 'required|numeric|min:0',
        ]);

        $compra = Compra::findOrFail($id);
        $compra->update([
            'fecha' => $request->fecha,
            'proveedor_id' => $request->proveedor_id,
            'subtotal' => $request->subtotal,
            'iva_porcentaje' => $request->iva_porcentaje,
            'iva_monto' => $request->iva_monto,
            'total' => $request->total,
            'notas' => $request->notas,
            'empleado_id' => $request->empleado_id,
        ]);

        $compra->detalles()->delete();
        if ($request->has('producto_id')) {
            foreach ($request->producto_id as $key => $producto_id) {
                DetalleCompra::create([
                    'compra_id' => $compra->id,
                    'producto_id' => $producto_id,
                    'cantidad' => $request->cantidad[$key],
                    'precio_unitario' => $request->precio_unitario[$key],
                    'subtotal' => $request->subtotal_detalle[$key],
                ]);
            }
        }

        return redirect()->route('compras.index')->with('success', 'Compra actualitzada correctament.');
    }

    public function destroy($id)
    {
        $compra = Compra::findOrFail($id);
        $compra->detalles()->delete();
        $compra->delete();
        return redirect()->route('compras.index')->with('success', 'Compra eliminada correctament.');
    }
}
