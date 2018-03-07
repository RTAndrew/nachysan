<?php

use Illuminate\Database\Seeder;
use App\informacao_geral_email;



class InformacoesGeraisTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        DB::table('informacao_geral_email')->insert([
            'email' => 'nachysan@gmail.com',
        ]);


        DB::table('informacao_geral_email')->insert([
            'email' => 'nachysan@site.com',
        ]);
    }
}
