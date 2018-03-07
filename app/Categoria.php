<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    
public $timestamps = false;


	// Relacao MUITOS para MUITOS 
		public function sub_categoria(){
			return $this->belongsToMany('App\sub_categoria', 'categoria_sub_categoria', 'categoria_id', 'sub_categoria_id');
			// ->withPivot('categorias_sub_categorias', 'categoria_id');
		}


	

}
