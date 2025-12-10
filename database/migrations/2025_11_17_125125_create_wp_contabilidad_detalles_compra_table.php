<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('wp_contabilidad_detalles_compra', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->mediumInteger('compra_id')->index();
            $table->mediumInteger('producto_id')->index();
            $table->integer('cantidad');
            $table->decimal('precio_unitario', 10);
            $table->decimal('subtotal', 10);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('wp_contabilidad_detalles_compra');
    }
};
