<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('wp_contabilidad_ventas', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->date('fecha')->nullable(false);
            $table->mediumInteger('cliente_id')->nullable(false);
            $table->decimal('subtotal', 10, 2)->nullable(false);
            $table->decimal('iva_porcentaje', 5, 2)->nullable(false);
            $table->decimal('iva_monto', 10, 2)->nullable(false);
            $table->decimal('total', 10, 2)->nullable(false);
            $table->text('notas')->nullable();
            $table->dateTime('fecha_creacion')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->mediumInteger('empleado_id')->nullable();
            $table->unique(['fecha', 'cliente_id', 'empleado_id'], 'unique_venta');
            $table->index('cliente_id');
            $table->index('empleado_id');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('wp_contabilidad_ventas');
    }
};