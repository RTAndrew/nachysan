<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
// use App\Categoria;

class sub_categoria extends Model
{


	public $timestamps = false;
	
	// Relacao MUITOS para MUITOS 
    public function categoria(){
    	return $this->belongsToMany('App\Categoria', 'categoria_sub_categoria', 'sub_categoria_id', 'categoria_id');
    }

    public function producto(){
    	return $this->hasMany('App\Producto');
    }

}
