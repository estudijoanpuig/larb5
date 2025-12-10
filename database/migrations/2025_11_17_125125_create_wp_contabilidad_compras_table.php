<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('wp_contabilidad_compras', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->date('fecha');
            $table->mediumInteger('proveedor_id')->index();
            $table->decimal('subtotal', 10);
            $table->decimal('iva_porcentaje', 5);
            $table->decimal('iva_monto', 10);
            $table->decimal('total', 10);
            $table->timestamps();
            $table->text('notas')->nullable();
            $table->dateTime('fecha_creacion')->useCurrent();
            $table->mediumInteger('empleado_id')->nullable()->index();

            $table->unique(['fecha', 'proveedor_id', 'empleado_id'], 'unique_compra');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('wp_contabilidad_compras');
    }
};
