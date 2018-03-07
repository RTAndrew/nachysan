<?php

use Illuminate\Database\Seeder;

class Categorias_SubCategoriasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         DB::table('categoria_sub_categoria')->insert([
            'categoria_id' => '1',
            'sub_categoria_id' => '1',
        ]);


         DB::table('categoria_sub_categoria')->insert([
            'categoria_id' => '1',
            'sub_categoria_id' => '2',
        ]);
         

         DB::table('categoria_sub_categoria')->insert([
            'categoria_id' => '1',
            'sub_categoria_id' => '3',
        ]);
    }
}
