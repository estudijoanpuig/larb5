<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    use HasFactory;

    // Especifica el nom de la taula (prefixat amb 'wp_contabilidad_')
    protected $table = 'wp_contabilidad_productos';

    // Camps que es poden assignar massivament (fillable)
    protected $fillable = [
        'nombre',
        'img',
        'video',
        'id_categoria_producto',
        'descripcion',
        'protocol',
        'precio',
        'stock',
    ];

    // Relació: Un producte pertany a una categoria
    public function categoriaProducto()
    {
        return $this->belongsTo(CategoriaProducto::class, 'id_categoria_producto', 'id');
    }
}