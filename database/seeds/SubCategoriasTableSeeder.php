<?php

use Illuminate\Database\Seeder;

class SubCategoriasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {


    	
        DB::table('sub_categorias')->insert([
            'nome' => 'Brincos',
            'slug' => 'brincos',
        ]);

    	
        DB::table('sub_categorias')->insert([
            'nome' => 'Pastas',
            'slug' => 'pastas',
        ]);

    	
        DB::table('sub_categorias')->insert([
            'nome' => 'Bolsas',
            'slug' => 'bolsas',
        ]);

    }
}
