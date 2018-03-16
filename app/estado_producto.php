<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class estado_producto extends Model
{
    public $timestamps = false;

     public function producto(){
    	return $this->hasMany('App\Producto');
    }
}
