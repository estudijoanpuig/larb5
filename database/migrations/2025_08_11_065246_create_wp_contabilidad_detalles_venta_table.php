<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('wp_contabilidad_detalles_venta', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->mediumInteger('venta_id')->nullable(false);
            $table->mediumInteger('producto_id')->nullable(false);
            $table->integer('cantidad')->nullable(false);
            $table->decimal('precio_unitario', 10, 2)->nullable(false);
            $table->decimal('subtotal', 10, 2)->nullable(false);
            $table->index('venta_id');
            $table->index('producto_id');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('wp_contabilidad_detalles_venta');
    }
};