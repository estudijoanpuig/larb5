<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWpContabilidadClientesTable extends Migration
{
    public function up()
    {
        Schema::create('wp_contabilidad_clientes', function (Blueprint $table) {
            $table->mediumIncrements('id'); // `mediumint` AUTO_INCREMENT
            $table->string('nombre', 100);
            $table->text('direccion')->nullable();
            $table->string('nif', 20)->nullable();
            $table->string('telefono', 20)->nullable();
            $table->string('email', 100)->nullable();
            $table->integer('id_categoria_cliente')->default(1); // Canvi de `unsignedInteger` a `integer`
            $table->string('img', 255)->nullable();
            $table->text('notas')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent()->useCurrentOnUpdate();
            $table->foreign('id_categoria_cliente')
                  ->references('id')
                  ->on('wp_contabilidad_categoria_clientes')
                  ->onDelete('restrict');
            $table->charset = 'utf8mb4';
            $table->collation = 'utf8mb4_unicode_520_ci';
            $table->engine = 'InnoDB';
        });
    }

    public function down()
    {
        Schema::dropIfExists('wp_contabilidad_clientes');
    }
}