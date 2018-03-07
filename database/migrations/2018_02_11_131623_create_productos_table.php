<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nome')->unique();
            $table->string('slug')->unique();
            $table->text('descricao');
            $table->integer('preco');
            $table->integer('quantidade');
            $table->string('estado');
            $table->string('thumbnail');
            $table->text('imagens');
            $table->bigInteger('views')->deafult(0);

            $table->integer('sub_categoria_id')->unsigned()->nullable();
            $table->foreign('sub_categoria_id')->references('id')->on('sub_categorias');
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('productos');
    }
}
