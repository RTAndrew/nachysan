<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

use View;
use Illuminate\Support\Facades\DB;

use App\Categoria;
use App\info_pais;
use App\rede_social;
use App\num_contacto;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);


    // VIEW COMPOSER
        View::composer(['*'], function($view){

            //Passar as categorias dos productos
            $categorias = Categoria::with('sub_categoria')->get();
            
            //Passar a lista dos paises
            $paises = info_pais::with('contacto')->get();
            
            //Passar as redes sociais
            $rede_social = rede_social::all();
                // Como é impossivel fazer o loop foreach na mesma variavel
                // Duplica-se esta segunda variavel para o footer da versao mobile
                $rede_social_2 = rede_social::all();


            $num_contacto = num_contacto::where('descricao_tipo_id', 1)->first();

            $view
            ->with('paises', $paises)
            ->with('rede_social', $rede_social)
            ->with('rede_social_2', $rede_social_2)
            ->with('num_contacto', $num_contacto)
            ->with('categorias', $categorias);

        });


    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
