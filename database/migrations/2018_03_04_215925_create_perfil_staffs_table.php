<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePerfilStaffsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('perfil_staffs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nome')->unique();
            $table->string('funcao');
            $table->text('descricao');
            $table->text('imagem');
            $table->text('facebook_link')->nullable();
            $table->text('instagram_link')->nullable();
            $table->text('youtube_link')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('perfil_staffs');
    }
}
