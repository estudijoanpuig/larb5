<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class CategoriaCliente extends Model
{
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