<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWpContabilidadEmpleadosTable extends Migration
{
    public function up()
    {
        Schema::create('wp_contabilidad_empleados', function (Blueprint $table) {
            $table->mediumIncrements('id');
            $table->string('nombre', 100);
            $table->string('nif', 20)->nullable();
            $table->text('direccion')->nullable();
            $table->string('telefono', 20)->nullable();
            $table->string('email', 100)->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('wp_contabilidad_empleados');
    }
}