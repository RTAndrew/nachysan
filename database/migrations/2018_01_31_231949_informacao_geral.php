<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class InformacaoGeral extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('informacao_geral_endereco', function(Blueprint $table){
            $table->increments('id');
            $table->string('endereco');
        });

        Schema::create('informacao_geral_telemovel', function(Blueprint $table){
            $table->increments('id');
            $table->string('telemovel');
        }); 

        Schema::create('informacao_geral_email', function(Blueprint $table){
            $table->increments('id');
            $table->string('email');
        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('informacao_geral_endereco');
        Schema::dropIfExists('informacao_geral_telemovel');
        Schema::dropIfExists('informacao_geral_email');
    }
}
