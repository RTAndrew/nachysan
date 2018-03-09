<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
USE Session;

use App\informacao_geral_email;
use App\Producto;
use App\PerfilStaff;


class PagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){

        $info_geral_email = informacao_geral_email::all();
        $productos = Producto::inRandomOrder()->take(8)->get();

        return view('pages.index')
            ->with('productos', $productos)
            ->with('informacao_geral_email', $info_geral_email);
    }



    public function productos(){


    	return view('pages.productos');
    }



    public function sobreNos(){
         $perfilStaff = PerfilStaff::all();
        return view('pages.sobre-nos')
            ->with('perfilStaff', $perfilStaff);
    }


     public function galeria(){
        $productos = Producto::inRandomOrder()->get();
        return view('pages.galeria')
            ->with('productos', $productos);
    }


     public function info(){

        

        return view('pages.info');
    }



    public function contacto(){


        $info_geral_email = informacao_geral_email::all();

        // Session::flash('success', 'A sua mensagem será respondida o mais rápido possível. Obrigado.');

        return redirect()->route('pages.index')
            ->with('success', 'asasd');
        // return view('pages.contacto')
        //     ->with('informacao_geral_email', $info_geral_email);

    }

}
