<?php

use Illuminate\Database\Seeder;

class RedeSocialTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        DB::table('rede_social')->insert([
            'nome' => 'facebook',
            'endereco_url' => 'http://facebook.com/'
        ]);

        DB::table('rede_social')->insert([
            'nome' => 'instagram',
            'endereco_url' => 'http://instagram.com/'
        ]);
    }
}
