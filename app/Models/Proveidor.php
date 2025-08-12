<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Proveidor extends Model
{
    use HasFactory;

    protected $table = 'wp_contabilidad_proveedores';

    protected $fillable = [
        'nombre',
        'nif',
        'direccion',
        'telefono',
        'email',
    ];
}