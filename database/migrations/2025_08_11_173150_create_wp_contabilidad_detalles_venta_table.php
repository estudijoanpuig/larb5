<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('wp_contabilidad_detalles_venta', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->mediumInteger('venta_id')->index();
            $table->mediumInteger('producto_id')->index();
            $table->integer('cantidad');
            $table->decimal('precio_unitario', 10);
            $table->decimal('subtotal', 10);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('wp_contabilidad_detalles_venta');
    }
};
