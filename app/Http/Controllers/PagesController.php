<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Illuminate\Support\Facades\DB;

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

        $productos = Producto::inRandomOrder()->take(8)->get();

        return view('pages.index')
            ->with('productos', $productos);
    }


    public function sobreNos(){
         $perfilStaff = PerfilStaff::all();
        return view('pages.sobre-nos')
            ->with('perfilStaff', $perfilStaff);
    }







     public function info(){


        return view('pages.info');
    }




    public function contacto(){


        Session::flash('warning', 'Página que tentou aceder encontra-se indisponível');

        return redirect()->route('pages.index');
            // ->with('warning', 'Pagina de contacto encontra-se indisponivel');
    }

}
