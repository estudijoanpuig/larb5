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
}