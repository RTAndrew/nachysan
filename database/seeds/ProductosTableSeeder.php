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
            'preco_promocao' => 1000, 
            'quantidade' => 2, 
            'estado' => 1,
            'thumbnail' => 'produto(2)',
            'views' => 5,
            'sub_categoria_id' => 1
 
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
            'estado' => 1,
            'thumbnail' => 'produto(2)',
            'views' => 7,
            'sub_categoria_id' => 1
 
        ]);


        DB::table('productos')->insert([
            'nome' => 'Brinco de Crochê',
            'slug' => 'brinco-de-croche',
            'descricao' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                  consequat.',
            'preco' => 3000,
            'preco_promocao' => 2560, 
            'quantidade' => 1, 
            'estado' => 1,
            'thumbnail' => 'produto(2)',
            'views' => 10,
            'sub_categoria_id' => 2
 
        ]);


        DB::table('productos')->insert([
            'nome' => 'Colar de Tecido',
            'slug' => 'colar-de-tecido',
            'descricao' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                  consequat.',
            'preco' => 5500, 
            'preco_promocao' => 3990,
            'quantidade' => 1, 
            'estado' => 1,
            'thumbnail' => 'produto(1)',
            'views' => 2,
            'sub_categoria_id' => 1
 
        ]);



    }
}
