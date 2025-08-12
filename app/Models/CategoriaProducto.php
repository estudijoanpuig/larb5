<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoriaProducto extends Model
{
    use HasFactory;

    protected $table = 'wp_contabilidad_categoria_productos';

    protected $fillable = ['nombre'];

    public function productes()
    {
        return $this->hasMany(Producto::class, 'id_categoria_producto', 'id');
    }
}