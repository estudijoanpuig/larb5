<?php

namespace App\Http\Controllers;

use App\Models\Producto;
use App\Models\CategoriaProducto;
use Illuminate\Http\Request;

class ProductoController extends Controller
{
    /**
     * Mostra la galeria de productes amb filtre per categories.
     */
    public function galeria(Request $request)
    {
        // Carregar categories excloent 'A_GASTO'
        $categories = CategoriaProducto::where('nombre_categoria', '!=', 'A_GASTO')->get();
        
        // Query base de productes amb imatge
        $query = Producto::with('categoriaProducto')->whereNotNull('img');
        
        // Aplicar filtre per categoria si existeix
        $categoriaSeleccionada = null;
        if ($request->has('categoria') && $request->categoria != '') {
            $categoriaSeleccionada = $request->categoria;
            $query->where('id_categoria_producto', $categoriaSeleccionada);
        }

        $productes = $query->get();

        return view('comptabilitat.galeria_productes', compact('categories', 'productes', 'categoriaSeleccionada'));
    }

    /**
     * Mostra els detalls d'un producte específic.
     */
    public function detall($id)
    {
        $producto = Producto::with('categoriaProducto')->findOrFail($id);
        $previous = Producto::where('id', '<', $id)
            ->whereNotNull('img')
            ->orderBy('id', 'desc')
            ->first();
        $next = Producto::where('id', '>', $id)
            ->whereNotNull('img')
            ->orderBy('id', 'asc')
            ->first();

        return view('comptabilitat.detall_producte', compact('producto', 'previous', 'next'));
    }
}