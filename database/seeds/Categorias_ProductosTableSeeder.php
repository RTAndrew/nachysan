<?php

use Illuminate\Database\Seeder;

class Categorias_ProductosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categoria_producto')->insert([
        	'producto_id' => 1,
            'categoria_id' => 1
        ]);
    }
}
