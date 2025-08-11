<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany; // Aquesta relació ja hi és, mantén-la si la necessites
use Illuminate\Database\Eloquent\Factories\HasFactory; // Afegeix aquesta línia per importar el trait correctament

class CategoriaCliente extends Model
{
	use HasFactory;
	
    protected $table = 'wp_contabilidad_categoria_clientes';

    protected $primaryKey = 'id';

    protected $fillable = ['nombre_categoria'];

    public $timestamps = true;

    /**
     * Relació: Una categoria pot tenir molts clients.
     */
    public function clients(): HasMany
    {
        return $this->hasMany(Cliente::class, 'id_categoria_cliente', 'id');
    }
}