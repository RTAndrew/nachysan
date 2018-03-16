<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoriasProductos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categoria_producto', function (Blueprint $table) {
            $table->increments('id');
            
            $table->integer('producto_id')->unsigned();
                $table->foreign('producto_id')->references('id')
                ->on('productos')
                ->onDelete('cascade');

            $table->integer('categoria_id')->unsigned();
                $table->foreign('categoria_id')->references('id')
                ->on('categorias')
                ->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categoria_producto');
    }
}
