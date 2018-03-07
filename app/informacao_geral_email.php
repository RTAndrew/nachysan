<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class informacao_geral_email extends Model
{
    protected $table = 'informacao_geral_email';

    //Nao adicionar os campos de tempo/hora
    public $timestamps = false;
}
