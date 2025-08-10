<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Empleat extends Model
{
    use HasFactory;

    protected $table = 'wp_contabilidad_empleados';

    protected $fillable = [
        'nombre',
        'nif',
        'direccion',
        'telefono',
        'email',
    ];
}