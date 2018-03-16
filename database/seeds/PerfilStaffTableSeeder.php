<?php

use Illuminate\Database\Seeder;

class PerfilStaffTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        DB::table('perfil_staffs')->insert([
            'nome' => 'Sarah Azevedo Correia',
            'funcao' => 'CEO',

            'descricao' => "It's not how many years you've lived in your life, but how much life you've lived in your years.
In the end, it's not the years in your life that count. It's the life in your years. ",

            'imagem' => '',
            'facebook_link' => 'http://facebook.com/',
            'youtube_link' => 'http://youtube.com/'
        ]);


        
        DB::table('perfil_staffs')->insert([
            'nome' => 'Vitoria Fernandes Correia',
            'funcao' => 'Marketing Digital',

            'descricao' => "Everything you do today forms the seeds for what you harvest tomorrow.
Always do your best. What you plant now, you will harvest later.",

            'imagem' => '',
            'facebook_link' => 'http://facebook.com/',
            'instagram_link' => 'http://instagram.com/'
        ]);


        
        DB::table('perfil_staffs')->insert([
            'nome' => 'Mateus Gomes Rodrigues',
            'funcao' => 'Assistente de Mídia',

            'descricao' => "Age is not a limit for dreams and goals.
You are never too old to set another goal or to dream a new dream.",

            'imagem' => '',
            'facebook_link' => 'http://facebook.com/',
            'instagram_link' => 'http://instagram.com/',
            'youtube_link' => 'http://youtube.com/',
        ]);


        
        DB::table('perfil_staffs')->insert([
            'nome' => 'Matilde Cardoso Pereira',
            'funcao' => 'Relações Públicas',

            'descricao' => "É um facto estabelecido de que um leitor é distraído pelo conteúdo legível de uma página quando analisa a sua mancha gráfica. Logo, o uso de Lorem Ipsum leva a uma distribuição mais ou menos normal de letras, ao contrário do uso de 'Conteúdo aqui, conteúdo aqui', tornando-o texto legível. ",

            'imagem' => '',
        ]);
    }
}
