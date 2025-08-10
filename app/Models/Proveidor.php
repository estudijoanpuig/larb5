<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Proveidor extends Model
{
    use HasFactory;

    // Especifica el nom de la taula
    protected $table = 'wp_contabilidad_proveedores';

    // Camps que es poden assignar massivament
    protected $fillable = [
        'nombre',
        'nif',
        'direccion',
        'telefono',
        'email',
    ];

    // Opcional: Desactivar la gestió automàtica de timestamps si no es desitja
    // public $timestamps = false;

    // Opcional: Relacions amb altres models (si cal)
    // Exemple: Si hi ha una relació amb productes o factures en el futur
    /*
    public function productes()
    {
        return $this->hasMany(Producto::class, 'id_proveedor', 'id');
    }
    */
}
