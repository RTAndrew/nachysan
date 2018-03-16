<?php

use Illuminate\Database\Seeder;



class EmailsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        DB::table('emails')->insert([
            'email' => 'nachysan@gmail.com',
            'descricao_tipo_id' => 1
        ]);


        DB::table('emails')->insert([
            'email' => 'nachysan@site.com',
            'descricao_tipo_id' => 2
        ]);
    }
}
