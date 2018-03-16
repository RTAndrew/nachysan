<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class rede_social extends Model
{
    protected $table = 'rede_social';
    //Nao adicionar os campos de tempo/hora
    public $timestamps = false;
}
