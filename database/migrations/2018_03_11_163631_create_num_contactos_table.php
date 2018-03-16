<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNumContactosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('num_contactos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('contacto')->unique();

            $table->integer('descricao_tipo_id')->unsigned()->nullable();
            $table->foreign('descricao_tipo_id')->references('id')->on('descricao_tipos');
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('num_contactos');
    }
}
