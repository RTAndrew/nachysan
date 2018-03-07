<?php

use Illuminate\Database\Seeder;

class CategoriasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categorias')->insert([
            'nome' => 'Para Elas',
            'slug' => 'para-elas'
 
        ]);



        DB::table('categorias')->insert([
            'nome' => 'Para Eles',
            'slug' => 'para-eles'
 
        ]);



        DB::table('categorias')->insert([
            'nome' => 'Diversos',
            'slug' => 'diversos'
 
        ]);
    }
}
