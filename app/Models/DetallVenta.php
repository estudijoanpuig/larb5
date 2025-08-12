<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DetallVenta extends Model
{
    use HasFactory;

    protected $table = 'wp_contabilidad_detalles_venta';

    protected $fillable = [
        'venta_id',
        'producto_id',
        'quantitat',
        'preu_unitari',
        'subtotal',
        'iva_monto',
    ];

    protected $casts = [
        'preu_unitari' => 'decimal:2',
        'subtotal' => 'decimal:2',
        'iva_monto' => 'decimal:2',
    ];

    public function venta()
    {
        return $this->belongsTo(Venta::class, 'venta_id', 'id');
    }

    public function producto()
    {
        return $this->belongsTo(Producto::class, 'producto_id', 'id');
    }
}