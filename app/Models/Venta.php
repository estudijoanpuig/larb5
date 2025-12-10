<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Venta extends Model
{
    protected $table = 'wp_contabilidad_ventas';
    protected $primaryKey = 'id';
    protected $casts = ['id' => 'integer'];
    protected $fillable = [
        'fecha', 'cliente_id', 'subtotal', 'iva_porcentaje', 'iva_monto', 'total', 'notas', 'empleado_id'
    ];
    public $timestamps = false;

    public function cliente(): BelongsTo
    {
        return $this->belongsTo(Cliente::class, 'cliente_id');
    }

    public function empleado(): BelongsTo
    {
        return $this->belongsTo(Empleat::class, 'empleado_id');
    }

    public function detalles(): HasMany
    {
        return $this->hasMany(DetalleVenta::class, 'venta_id');
    }
}