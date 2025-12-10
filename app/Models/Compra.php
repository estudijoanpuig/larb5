<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Compra extends Model
{
    protected $table = 'wp_contabilidad_compras';
    protected $primaryKey = 'id';
    protected $casts = ['id' => 'integer'];
    protected $fillable = [
        'fecha', 'proveedor_id', 'subtotal', 'iva_porcentaje', 'iva_monto', 'total', 'notas', 'empleado_id'
    ];
    public $timestamps = false;

    public function proveedor(): BelongsTo
    {
        return $this->belongsTo(Proveidor::class, 'proveedor_id');
    }

    public function empleado(): BelongsTo
    {
        return $this->belongsTo(Empleat::class, 'empleado_id');
    }

    public function detalles(): HasMany
    {
        return $this->hasMany(DetalleCompra::class, 'compra_id');
    }
}
