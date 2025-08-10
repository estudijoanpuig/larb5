<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWpContabilidadProductosTable extends Migration
{
    public function up()
    {
        Schema::create('wp_contabilidad_productos', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->string('nombre', 100);
            $table->string('img', 255)->nullable();
            $table->string('video', 255)->nullable();
            $table->unsignedBigInteger('id_categoria_producto')->nullable();
            $table->text('descripcion')->nullable();
            $table->text('protocol')->nullable();
            $table->decimal('precio', 10, 2)->nullable();
            $table->integer('stock')->default(0);
            $table->timestamps();

            $table->foreign('id_categoria_producto')
                  ->references('id')
                  ->on('wp_contabilidad_categoria_productos')
                  ->onDelete('set null');
        });
    }

    public function down()
    {
        Schema::dropIfExists('wp_contabilidad_productos');
    }
}