<?php

use Illuminate\Database\Seeder;

class DescricaoTiposTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('descricao_tipos')->insert([
            'nome' => 'Disponível',
            'descricao' => 'Todos os productos que se encontram disponiveis e podem ser adquiridos'
        ]);

        DB::table('descricao_tipos')->insert([
            'nome' => 'Indisponível',
            'descricao' => 'Todos os productos que se encontram indisponiveis, mas que porém podem ser encontrados na galeria.'
        ]);
    }
}
