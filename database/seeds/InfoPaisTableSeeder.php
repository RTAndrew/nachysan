<?php

use Illuminate\Database\Seeder;

class InfoPaisTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        

        DB::table('info_pais')->insert([
            'pais' => 'Angola',
            'endereco' => 'Luanda, Nova Vida, Rua 4, Predio 22, Apt. 12',
            'contacto_id' => 1,
        ]);
        

        DB::table('info_pais')->insert([
            'pais' => 'Namibia',
            'endereco' => "Windhoek, South's Village, 12th Street Boys",
            'contacto_id' => 3,
        ]);
    }
}
