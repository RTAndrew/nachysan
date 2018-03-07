<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class informacao_geral_endereco extends Model
{
    protected $table = 'informacao_geral_endereco';
    
    //Nao adicionar os campos de tempo/hora
    public $timestamps = false;
}
