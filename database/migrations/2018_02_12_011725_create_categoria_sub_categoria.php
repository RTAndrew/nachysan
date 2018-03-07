<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoriaSubCategoria extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categoria_sub_categoria', function (Blueprint $table) {
            $table->increments('id');

            $table->integer('categoria_id')->unsigned();
                $table->foreign('categoria_id')->references('id')->on('categorias')->onDelete('cascade');

            $table->integer('sub_categoria_id')->unsigned();
                $table->foreign('sub_categoria_id')->references('id')->on('sub_categorias');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('categoria_sub_categoria');
    }
}
