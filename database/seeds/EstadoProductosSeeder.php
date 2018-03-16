<?php

use Illuminate\Database\Seeder;

class EstadoProductosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         DB::table('estado_productos')->insert([
            'nome' => 'Disponível',
            'descricao' => 'Productos que estão actualmente disponíveis para aquisição', 
        ]);
         
         DB::table('estado_productos')->insert([
            'nome' => 'Indisponível',
            'descricao' => 'Productos que não se encontram disponíveis, mas que porém podem ser vistos através da galeria', 
        ]);
    }
}
