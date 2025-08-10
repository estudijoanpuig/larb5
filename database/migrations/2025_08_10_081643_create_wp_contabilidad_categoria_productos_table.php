<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWpContabilidadCategoriaProductosTable extends Migration
{
    public function up()
    {
        Schema::create('wp_contabilidad_categoria_productos', function (Blueprint $table) {
            $table->id();
            $table->string('nombre_categoria', 255);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('wp_contabilidad_categoria_productos');
    }
}