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
            $table->integer('preco_promocao')->nullable()->default(0);
            $table->integer('quantidade');
            $table->string('estado')->default('Indefinido');
            $table->string('thumbnail');
            $table->text('imagens')->nullable($value = true);
            $table->bigInteger('views')->default(0);

            $table->integer('sub_categoria_id')->unsigned()->nullable();
            $table->foreign('sub_categoria_id')->references('id')->on('sub_categorias');

            $table->integer('estado_producto_id')->unsigned()->nullable();
            $table->foreign('estado_producto_id')->references('id')->on('estado_productos');
            
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
        Schema::drop('productos');
    }
}
