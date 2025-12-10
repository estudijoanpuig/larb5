<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoriaProducto extends Model
{
    use HasFactory;

    // Especifica el nom de la taula (prefixat amb 'wp_contabilidad_')
    protected $table = 'wp_contabilidad_categoria_productos';

    // Camps que es poden assignar massivament (fillable)
    protected $fillable = [
        'nombre_categoria',
    ];

    // Relació: Una categoria té molts productes
    public function productos()
    {
        return $this->hasMany(Producto::class, 'id_categoria_producto', 'id');
    }
}