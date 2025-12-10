<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class InformeController extends Controller
{
    public function index(Request $request)
    {
        // Obtenir paràmetres GET
        $year = $request->input('year');
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        // Base de la consulta per vendes per mes
        $queryVentasPorMes = DB::table('wp_contabilidad_ventas')
            ->select(DB::raw('MONTH(fecha) as mes'), DB::raw('SUM(total) as total'))
            ->groupBy('mes')
            ->orderBy('mes');

        // Aplicar filtres
        if ($year) {
            $queryVentasPorMes->whereYear('fecha', $year);
        }
        if ($startDate && $endDate) {
            $queryVentasPorMes->whereBetween('fecha', [$startDate, $endDate]);
        }

        $ventasPorMes = $queryVentasPorMes->get();

        $meses = [];
        $totals = [];
        foreach ($ventasPorMes as $venta) {
            $meses[] = date('F', mktime(0, 0, 0, $venta->mes, 1));
            $totals[] = floatval($venta->total);
        }

        // Consulta per vendes per categoria (amb filtres)
        $queryVentasPorCategoria = DB::table('wp_contabilidad_detalles_venta')
            ->join('wp_contabilidad_productos', 'wp_contabilidad_detalles_venta.producto_id', '=', 'wp_contabilidad_productos.id')
            ->join('wp_contabilidad_categoria_productos', 'wp_contabilidad_productos.id_categoria_producto', '=', 'wp_contabilidad_categoria_productos.id')
            ->select('wp_contabilidad_categoria_productos.nombre_categoria', DB::raw('SUM(wp_contabilidad_detalles_venta.subtotal) as total'))
            ->groupBy('wp_contabilidad_categoria_productos.nombre_categoria');

        // Aplicar filtres a vendes (via join amb wp_contabilidad_ventas)
        $queryVentasPorCategoria->join('wp_contabilidad_ventas', 'wp_contabilidad_detalles_venta.venta_id', '=', 'wp_contabilidad_ventas.id');
        if ($year) {
            $queryVentasPorCategoria->whereYear('wp_contabilidad_ventas.fecha', $year);
        }
        if ($startDate && $endDate) {
            $queryVentasPorCategoria->whereBetween('wp_contabilidad_ventas.fecha', [$startDate, $endDate]);
        }

        $ventasPorCategoria = $queryVentasPorCategoria->get();

        $categorias = [];
        $ventasCategoria = [];
        foreach ($ventasPorCategoria as $venta) {
            $categorias[] = $venta->nombre_categoria;
            $ventasCategoria[] = floatval($venta->total);
        }

        // Consulta per vendes per empleat (amb filtres)
        $queryVentasPorEmpleat = DB::table('wp_contabilidad_ventas')
            ->select(
                DB::raw('MONTH(fecha) as mes'),
                'wp_contabilidad_empleados.nombre as empleat',
                DB::raw('SUM(wp_contabilidad_ventas.total) as total')
            )
            ->join('wp_contabilidad_empleados', 'wp_contabilidad_ventas.empleado_id', '=', 'wp_contabilidad_empleados.id')
            ->groupBy('mes', 'empleat')
            ->orderBy('mes');

        if ($year) {
            $queryVentasPorEmpleat->whereYear('fecha', $year);
        }
        if ($startDate && $endDate) {
            $queryVentasPorEmpleat->whereBetween('fecha', [$startDate, $endDate]);
        }

        $ventasPorEmpleat = $queryVentasPorEmpleat->get();

        $mesesEmpleat = [];
        $seriesData = [];
        $empleats = [];

        foreach ($ventasPorEmpleat as $venta) {
            $mesNom = date('F', mktime(0, 0, 0, $venta->mes, 1));
            if (!in_array($mesNom, $mesesEmpleat)) {
                $mesesEmpleat[] = $mesNom;
            }
            if (!in_array($venta->empleat, $empleats)) {
                $empleats[] = $venta->empleat;
            }
            $seriesData[$venta->empleat][$mesNom] = floatval($venta->total);
        }

        $series = [];
        foreach ($empleats as $empleat) {
            $data = [];
            foreach ($mesesEmpleat as $mes) {
                $data[] = $seriesData[$empleat][$mes] ?? 0;
            }
            $series[] = [
                'name' => $empleat,
                'data' => $data
            ];
        }

        // Llista d'anys possibles (basat en dades de vendes, per exemple)
        $anys = DB::table('wp_contabilidad_ventas')
            ->select(DB::raw('YEAR(fecha) as any'))
            ->distinct()
            ->pluck('any')
            ->toArray();

        return view('informes.index', compact('meses', 'totals', 'categorias', 'ventasCategoria', 'mesesEmpleat', 'series', 'anys'));
    }

    public function compras(Request $request)
    {
        // Obtenir paràmetres GET
        $year = $request->input('year');
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        // Base de la consulta per compres per mes
        $queryComprasPorMes = DB::table('wp_contabilidad_compras')
            ->select(DB::raw('MONTH(fecha) as mes'), DB::raw('SUM(total) as total'))
            ->groupBy('mes')
            ->orderBy('mes');

        // Aplicar filtres
        if ($year) {
            $queryComprasPorMes->whereYear('fecha', $year);
        }
        if ($startDate && $endDate) {
            $queryComprasPorMes->whereBetween('fecha', [$startDate, $endDate]);
        }

        $comprasPorMes = $queryComprasPorMes->get();

        $meses = [];
        $totals = [];
        foreach ($comprasPorMes as $compra) {
            $meses[] = date('F', mktime(0, 0, 0, $compra->mes, 1));
            $totals[] = floatval($compra->total);
        }

        // Consulta per compres per categoria de producte
        $queryComprasPorCategoria = DB::table('wp_contabilidad_detalles_compra')
            ->join('wp_contabilidad_productos', 'wp_contabilidad_detalles_compra.producto_id', '=', 'wp_contabilidad_productos.id')
            ->join('wp_contabilidad_categoria_productos', 'wp_contabilidad_productos.id_categoria_producto', '=', 'wp_contabilidad_categoria_productos.id')
            ->select('wp_contabilidad_categoria_productos.nombre_categoria', DB::raw('SUM(wp_contabilidad_detalles_compra.subtotal) as total'))
            ->groupBy('wp_contabilidad_categoria_productos.nombre_categoria');

        // Aplicar filtres
        $queryComprasPorCategoria->join('wp_contabilidad_compras', 'wp_contabilidad_detalles_compra.compra_id', '=', 'wp_contabilidad_compras.id');
        if ($year) {
            $queryComprasPorCategoria->whereYear('wp_contabilidad_compras.fecha', $year);
        }
        if ($startDate && $endDate) {
            $queryComprasPorCategoria->whereBetween('wp_contabilidad_compras.fecha', [$startDate, $endDate]);
        }

        $comprasPorCategoria = $queryComprasPorCategoria->get();

        $categorias = [];
        $comprasCategoria = [];
        foreach ($comprasPorCategoria as $compra) {
            $categorias[] = $compra->nombre_categoria;
            $comprasCategoria[] = floatval($compra->total);
        }

        // Consulta per compres per proveïdor
        $queryComprasPorProveedor = DB::table('wp_contabilidad_compras')
            ->select(
                DB::raw('MONTH(fecha) as mes'),
                'wp_contabilidad_proveedores.nombre as proveedor',
                DB::raw('SUM(wp_contabilidad_compras.total) as total')
            )
            ->join('wp_contabilidad_proveedores', 'wp_contabilidad_compras.proveedor_id', '=', 'wp_contabilidad_proveedores.id')
            ->groupBy('mes', 'proveedor')
            ->orderBy('mes');

        if ($year) {
            $queryComprasPorProveedor->whereYear('fecha', $year);
        }
        if ($startDate && $endDate) {
            $queryComprasPorProveedor->whereBetween('fecha', [$startDate, $endDate]);
        }

        $comprasPorProveedor = $queryComprasPorProveedor->get();

        $mesesProveedor = [];
        $seriesData = [];
        $proveedores = [];

        foreach ($comprasPorProveedor as $compra) {
            $mesNom = date('F', mktime(0, 0, 0, $compra->mes, 1));
            if (!in_array($mesNom, $mesesProveedor)) {
                $mesesProveedor[] = $mesNom;
            }
            if (!in_array($compra->proveedor, $proveedores)) {
                $proveedores[] = $compra->proveedor;
            }
            $seriesData[$compra->proveedor][$mesNom] = floatval($compra->total);
        }

        $series = [];
        foreach ($proveedores as $proveedor) {
            $data = [];
            foreach ($mesesProveedor as $mes) {
                $data[] = $seriesData[$proveedor][$mes] ?? 0;
            }
            $series[] = [
                'name' => $proveedor,
                'data' => $data
            ];
        }

        // Llista d'anys possibles
        $anys = DB::table('wp_contabilidad_compras')
            ->select(DB::raw('YEAR(fecha) as any'))
            ->distinct()
            ->pluck('any')
            ->toArray();

        return view('informes.compras', compact('meses', 'totals', 'categorias', 'comprasCategoria', 'mesesProveedor', 'series', 'anys'));
    }

    public function resultats(Request $request)
    {
        // Obtenir paràmetres GET
        $year = $request->input('year');
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');

        // === VENDES PER MES ===
        $queryVentas = DB::table('wp_contabilidad_ventas')
            ->select(DB::raw('MONTH(fecha) as mes'), DB::raw('SUM(total) as total'))
            ->groupBy('mes')
            ->orderBy('mes');

        if ($year) {
            $queryVentas->whereYear('fecha', $year);
        }
        if ($startDate && $endDate) {
            $queryVentas->whereBetween('fecha', [$startDate, $endDate]);
        }

        $ventasPorMes = $queryVentas->get();

        // === COMPRES PER MES ===
        $queryCompras = DB::table('wp_contabilidad_compras')
            ->select(DB::raw('MONTH(fecha) as mes'), DB::raw('SUM(total) as total'))
            ->groupBy('mes')
            ->orderBy('mes');

        if ($year) {
            $queryCompras->whereYear('fecha', $year);
        }
        if ($startDate && $endDate) {
            $queryCompras->whereBetween('fecha', [$startDate, $endDate]);
        }

        $comprasPorMes = $queryCompras->get();

        // Preparar arrays per a gràfics
        $meses = [];
        $ventasData = [];
        $comprasData = [];
        $beneficisData = [];

        // Mesos del 1 al 12
        for ($i = 1; $i <= 12; $i++) {
            $meses[] = date('F', mktime(0, 0, 0, $i, 1));
            
            $ventaMes = $ventasPorMes->firstWhere('mes', $i);
            $compraMes = $comprasPorMes->firstWhere('mes', $i);
            
            $ventaTotal = $ventaMes ? floatval($ventaMes->total) : 0;
            $compraTotal = $compraMes ? floatval($compraMes->total) : 0;
            
            $ventasData[] = $ventaTotal;
            $comprasData[] = $compraTotal;
            $beneficisData[] = $ventaTotal - $compraTotal;
        }

        // === TOTALS GENERALS ===
        $totalVentas = array_sum($ventasData);
        $totalCompras = array_sum($comprasData);
        $totalBeneficis = $totalVentas - $totalCompras;
        $margePercentatge = $totalVentas > 0 ? ($totalBeneficis / $totalVentas) * 100 : 0;

        // === TOP 5 PRODUCTES MÉS VENUTS ===
        $queryTopProductos = DB::table('wp_contabilidad_detalles_venta')
            ->join('wp_contabilidad_productos', 'wp_contabilidad_detalles_venta.producto_id', '=', 'wp_contabilidad_productos.id')
            ->join('wp_contabilidad_ventas', 'wp_contabilidad_detalles_venta.venta_id', '=', 'wp_contabilidad_ventas.id')
            ->select(
                'wp_contabilidad_productos.descripcion',
                DB::raw('SUM(wp_contabilidad_detalles_venta.cantidad) as cantidad_total'),
                DB::raw('SUM(wp_contabilidad_detalles_venta.subtotal) as ingresos')
            )
            ->groupBy('wp_contabilidad_productos.id', 'wp_contabilidad_productos.descripcion')
            ->orderBy('cantidad_total', 'desc')
            ->limit(5);

        if ($year) {
            $queryTopProductos->whereYear('wp_contabilidad_ventas.fecha', $year);
        }
        if ($startDate && $endDate) {
            $queryTopProductos->whereBetween('wp_contabilidad_ventas.fecha', [$startDate, $endDate]);
        }

        $topProductos = $queryTopProductos->get();

        // Llista d'anys possibles
        $anys = DB::table('wp_contabilidad_ventas')
            ->select(DB::raw('YEAR(fecha) as any'))
            ->distinct()
            ->pluck('any')
            ->toArray();

        return view('informes.resultats', compact(
            'meses',
            'ventasData',
            'comprasData',
            'beneficisData',
            'totalVentas',
            'totalCompras',
            'totalBeneficis',
            'margePercentatge',
            'topProductos',
            'anys'
        ));
    }
}