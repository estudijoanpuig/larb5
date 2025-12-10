<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DetalleCompra extends Model
{
    protected $table = 'wp_contabilidad_detalles_compra';
    protected $primaryKey = 'id';
    protected $casts = ['id' => 'integer'];
    protected $fillable = [
        'compra_id', 'producto_id', 'cantidad', 'precio_unitario', 'subtotal'
    ];
    public $timestamps = false;

    public function compra(): BelongsTo
    {
        return $this->belongsTo(Compra::class, 'compra_id');
    }

    public function producto(): BelongsTo
    {
        return $this->belongsTo(Producto::class, 'producto_id');
    }
}
