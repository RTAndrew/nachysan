<?php

use Illuminate\Database\Seeder;


class ProductosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

    	
        DB::table('productos')->insert([
            'nome' => 'Brinco de Madeira',
            'slug' => 'brinco-de-madeira',
            'descricao' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                  consequat.',
            'preco' => 3000, 
            'quantidade' => 2, 
            'estado' => 'Disponivel',
            'thumbnail' => 'produto(2)',
            'views' => 5,
 
        ]);


        DB::table('productos')->insert([
            'nome' => 'Brinco de Pano',
            'slug' => 'brinco-de-pano',
            'descricao' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                  consequat.',
            'preco' => 3000, 
            'quantidade' => 1, 
            'estado' => 'Disponivel',
            'thumbnail' => 'produto(1)',
            'views' => 7,
 
        ]);


        DB::table('productos')->insert([
            'nome' => 'Brinco de Crochê',
            'slug' => 'brinco-de-croche',
            'descricao' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                  consequat.',
            'preco' => 3000, 
            'quantidade' => 1, 
            'estado' => 'Disponivel',
            'thumbnail' => 'produto(1)',
            'views' => 10,
 
        ]);


        DB::table('productos')->insert([
            'nome' => 'Colar de Tecido',
            'slug' => 'colar-de-tecido',
            'descricao' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                  consequat.',
            'preco' => 5500, 
            'quantidade' => 1, 
            'estado' => 'Disponivel',
            'thumbnail' => 'produto(3)',
            'views' => 2,
 
        ]);



    }
}
