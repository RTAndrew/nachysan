<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Categoria;
use Carbon\Carbon;

class Producto extends Model
{


	public function categorias(){

        return $this->belongsToMany('App\Categoria', 'categoria_producto', 'producto_id', 'categoria_id');

    }



	public function sub_categorias(){
		return $this->belongsTo('App\sub_categoria');
	}



}
