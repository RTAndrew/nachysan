<?php

use Illuminate\Database\Seeder;

class ContactoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('num_contactos')->insert([
            'contacto' => '+244932337220',
            'descricao_tipo_id' => 1
        ]);

        DB::table('num_contactos')->insert([
            'contacto' => '+244998452443',
            'descricao_tipo_id' => 2
        ]);

        DB::table('num_contactos')->insert([
            'contacto' => '+26497824582',
            'descricao_tipo_id' => 2
        ]);
    }
}
