<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         $this->call(ProductosTableSeeder::class);
         $this->call(CategoriasTableSeeder::class);
         $this->call(SubCategoriasTableSeeder::class);
         $this->call(InformacoesGeraisTableSeeder::class);
         $this->call(Categorias_SubCategoriasTableSeeder::class);
         $this->call(Categorias_ProductosTableSeeder::class);
        
    }
}

