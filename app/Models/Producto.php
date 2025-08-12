<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    use HasFactory;

    protected $table = 'wp_contabilidad_productos';

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

    public function categoriaProducto()
    {
        return $this->belongsTo(CategoriaProducto::class, 'id_categoria_producto', 'id');
    }
}