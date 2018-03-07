<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Producto;
use App\Categoria;
use App\sub_categoria;

class ProductoController extends Controller
{
    


    


    public function index(){

	    // $categorias = Categoria::all();
	    $categorias = Categoria::with('sub_categoria')->get();
	    $sub_categorias = sub_categoria::all();
	    // $productos = Producto::all();
		
		//Numero de productos a mostrar (12)
	    $numPaginacao = 12;



	    if(request()->categoria){


	    	//Armazenar o variavel CATEGORIA que esta a ser passada na URL
	    	$requestCategoriaURL = request()->categoria;

	    	//Com base na CATEGORIA armazenada, fazer BUSCA na BD para pegar o nome da CATEGORIA
	    	if( count($categorias->where('slug', $requestCategoriaURL)) > 0 ){
	    		//Caso a categoria for valida
	    		$categoriaNome = $categorias->where('slug', $requestCategoriaURL)->first()->nome;
	    	} else {
	    		$categoriaNome = "Categoria Inválida";
	    	}


	    	//Query
			$productos = DB::table('productos')
			->join('categoria_producto', 'producto_id', '=', 'productos.id')
			->join('categorias', 'categorias.id', '=', 'categoria_producto.categoria_id')
			
				// Categoria
				->where('categorias.slug', $requestCategoriaURL)

			//Paginacao
			->select('productos.*')
			->inRandomOrder()			
			->paginate($numPaginacao);



	    } else {
	    	$categoriaNome = "Todos os productos";
	    	$productos = Producto::inRandomOrder()->paginate($numPaginacao);	
	    }




	    /*

	    	Saber se a SUBCATEGORIA esta a ser passada
	    	Caso sim, e porque a categoria tambem esta a ser passada
	    	Entao, armazenar as variaveis CATEGORIA E SUBCATEGORIA para reutilizar

	    */
	    if (request()->subcategoria) {

	  
	    	//Armazenar o variavel SUBCATEGORIA que esta a ser passada na URL
	    	$requestSubCategoriaURL = request()->subcategoria;



	    	//Fazer a busca na BD para saber o nome da SUBCATEGORIA 
	    	if( count($sub_categorias->where('slug', $requestSubCategoriaURL)) > 0 ){
	    		$subcategoriaNome = $sub_categorias->where('slug', $requestSubCategoriaURL)->first()->nome;
	    	} else {
	    		$subcategoriaNome = "Subcategoria Inválida";
	    	}
	    	


	    	//CONCATENAR a Categoria e a SubCategoria para mostrar a pagina de PRODUCTOS
	    	if( count($categorias->where('slug', $requestCategoriaURL)) > 0 ){
	    		//Caso a categoria for valida
	    		$categoriaNome = $categorias->where('slug', $requestCategoriaURL)->first()->nome .' / '. $subcategoriaNome;
	    	} else {
	    		$categoriaNome = "Categoria ou Subcategoria Inválida";

	    	}
	    	
	  		
	    	//Query
			$productos = DB::table('productos')
			->join('categoria_producto', 'producto_id', '=', 'productos.id')
			->join('categorias', 'categorias.id', '=', 'categoria_producto.categoria_id')
			->join('sub_categorias', 'sub_categorias.id', '=', 'productos.sub_categoria_id')
			
				// Categoria
				->where('categorias.slug', $requestCategoriaURL)
				// Subcategoria
				->where('sub_categorias.slug', $requestSubCategoriaURL)

			//Paginacao
			->select('productos.*')
			->paginate($numPaginacao);

	    } 


		return view('producto.index')
	        ->with('categoriaNome', $categoriaNome)
	        ->with('productos', $productos)
	        ->with('categorias', $categorias);
		}








	//Mostrar o producto
    public function findSlug($slug){
    	$producto = Producto::where('slug', $slug)->firstOrFail();

    	// Incrementar o numero de view
    		$producto->increment('views');

    	$sub_categoria_nome = DB::select('

				SELECT sub_categorias.*
				FROM productos
				INNER JOIN sub_categorias ON (sub_categorias.id = productos.sub_categoria_id)
				WHERE productos.slug = :slug', ['slug' => $slug]
			);   	

  		

    	//Procurar pelo nome da SUBCATEGORIA do producto em questao
		$sub_categoria_nome = DB::table('sub_categorias')
			->join('productos', 'productos.sub_categoria_id', '=', 'sub_categorias.id')
				->where('productos.slug', $slug)
			->select('sub_categorias.*')
			->get();  
			


		$productosRelacionados = DB::table('productos')
			->join('sub_categorias', 'sub_categoria_id', '=', 'sub_categorias.id')
			
			// Productos relacionados
				->where('productos.sub_categoria_id', $producto->sub_categoria_id)
			//Excepto aqueles que contem o mesmo nome
				->whereNotIn('productos.nome', [$producto->nome])

			->take(4)
			->select('productos.*')
			->get();  



    	return view('producto.pagina-producto')
    		->with('producto', $producto)
    		->with('productosRelacionados', $productosRelacionados)
    		->with('sub_categoria_nome', $sub_categoria_nome);
	    }










    public function create(){



    }



}
