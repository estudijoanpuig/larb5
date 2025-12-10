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
        Schema::create('wp_contabilidad_clientes', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->string('nombre', 100);
            $table->text('direccion')->nullable();
            $table->string('nif', 20)->nullable();
            $table->string('telefono', 20)->nullable();
            $table->string('email', 100)->nullable();
            $table->integer('id_categoria_cliente')->default(1)->index('wp_contabilidad_clientes_id_categoria_cliente_foreign');
            $table->string('img')->nullable();
            $table->text('notas')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate()->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('wp_contabilidad_clientes');
    }
};
