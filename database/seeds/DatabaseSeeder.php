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

         $this->call(CategoriasTableSeeder::class);
         
         $this->call(SubCategoriasTableSeeder::class);

         $this->call(ProductosTableSeeder::class);
              
         $this->call(Categorias_SubCategoriasTableSeeder::class);
         
         $this->call(Categorias_ProductosTableSeeder::class); 
         
         $this->call(EstadoProductosSeeder::class);
         
         $this->call(DescricaoTiposTableSeeder::class);
         
         $this->call(EmailsTableSeeder::class); 
         
         $this->call(ContactoTableSeeder::class); 
         
         $this->call(RedeSocialTableSeeder::class); 
         
         $this->call(InfoPaisTableSeeder::class); 

         $this->call(PerfilStaffTableSeeder::class); 
        
    }
}

