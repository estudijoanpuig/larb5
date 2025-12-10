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
        Schema::create('wp_contabilidad_productos', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->string('nombre', 100);
            $table->string('img')->nullable();
            $table->string('video')->nullable();
            $table->unsignedBigInteger('id_categoria_producto')->nullable()->index('wp_contabilidad_productos_id_categoria_producto_foreign');
            $table->text('descripcion')->nullable();
            $table->text('protocol')->nullable();
            $table->decimal('precio', 10)->nullable();
            $table->integer('stock')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('wp_contabilidad_productos');
    }
};
