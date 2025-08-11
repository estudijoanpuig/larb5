<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory; // Importació necessària

class Cliente extends Model
{
	use HasFactory; // Afegeix el trait aquí
	
    protected $table = 'wp_contabilidad_clientes';

    protected $primaryKey = 'id';

    protected $casts = [
        'id' => 'integer', // Assegura que id es tracti com a enter
        'id_categoria_cliente' => 'integer', // Assegura que la clau forana es tracti com a enter
    ];

    protected $fillable = [
        'nombre',
        'direccion',
        'nif',
        'telefono',
        'email',
        'id_categoria_cliente',
        'img',
        'notas',
    ];

    public $timestamps = true;

    /**
     * Relació: Un client pertany a una categoria.
     */
    public function categoria(): BelongsTo
    {
        return $this->belongsTo(CategoriaCliente::class, 'id_categoria_cliente', 'id');
    }
}