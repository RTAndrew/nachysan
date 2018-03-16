<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class info_pais extends Model
{
    protected $table = 'info_pais';

    //Nao adicionar os campos de tempo/hora
    public $timestamps = false;

    public function contacto(){
		return $this->belongsTo('App\num_contacto');
	}
}
