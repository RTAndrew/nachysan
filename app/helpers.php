<?php
use Carbon\Carbon;

//Adicionar separador virgula aos precos
	function getPreco($preco){

    	return number_format($preco);
    	
    }


// Saber a diferenca de dias entra a data que o producto foi publicado e o dia actual
    function getDiffProductoData($data){
    	$created = new Carbon($data);
		$now = Carbon::now();

		// $difference = ($created->diff($now)->days);

		$difference = ($created->diff($now)->days < 12)
		    ? 'novo'
		    // : $created->diffForHumans($now);
		    : "";

		return $difference;
    }



//Erro - IMAGEM nao encontrada
    function imagemProdutoNaoEncontrada($imagem){
    	return file_exists('storage/'.$imagem) ? asset('storage/'.$imagem) : asset('img/image-not-found.png');
    }


