<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWpContabilidadCategoriaClientesTable extends Migration
{
    public function up()
    {
        Schema::create('wp_contabilidad_categoria_clientes', function (Blueprint $table) {
            $table->integer('id')->autoIncrement(); // Canvi de `id()` a `integer` perquè sigui `int` signat
            $table->string('nombre_categoria', 255);
            $table->timestamps();
            $table->charset = 'utf8mb4';
            $table->collation = 'utf8mb4_unicode_520_ci';
            $table->engine = 'InnoDB';
        });
    }

    public function down()
    {
        Schema::dropIfExists('wp_contabilidad_categoria_clientes');
    }
}