<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Email extends Model
{
    public $timestamps = false;

    public function descricao_tipos(){
		return $this->belongsTo('App\descricao_tipos');
	}
}
