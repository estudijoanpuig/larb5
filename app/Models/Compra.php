<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Compra extends Model
{
    use HasFactory;

    protected $table = 'wp_contabilidad_compras';

    protected $fillable = ['fecha', 'proveedor_id', 'subtotal', 'iva_monto', 'total'];

    protected $casts = [
        'fecha' => 'date',
        'subtotal' => 'decimal:2',
        'iva_monto' => 'decimal:2',
        'total' => 'decimal:2',
    ];

    public function proveidor()
    {
        return $this->belongsTo(Proveidor::class, 'proveedor_id', 'id');
    }

    public function detalls()
    {
        return $this->hasMany(DetallCompra::class, 'compra_id', 'id');
    }

    public function calcularTotals()
    {
        $subtotal = $this->detalls->sum('subtotal');
        $iva_monto = $this->detalls->sum('iva_monto');
        $this->subtotal = $subtotal;
        $this->iva_monto = $iva_monto;
        $this->total = $subtotal + $iva_monto;
        $this->save();
    }
}