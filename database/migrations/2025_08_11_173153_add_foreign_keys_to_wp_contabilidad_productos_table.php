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
        Schema::table('wp_contabilidad_productos', function (Blueprint $table) {
            $table->foreign(['id_categoria_producto'])->references(['id'])->on('wp_contabilidad_categoria_productos')->onUpdate('no action')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('wp_contabilidad_productos', function (Blueprint $table) {
            $table->dropForeign('wp_contabilidad_productos_id_categoria_producto_foreign');
        });
    }
};
