<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Illuminate\Support\Facades\DB;

use App\informacao_geral_email;
use App\Producto;
use App\PerfilStaff;
use App\info_pais;
use App\num_contacto;
use App\Email;
use App\rede_social;


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


        // Session::flash('warning', 'Página que tentou aceder encontra-se indisponível');

        // return redirect()->route('pages.index');
            // ->with('warning', 'Pagina de contacto encontra-se indisponivel');

        $paises = info_pais::with('contacto')->get();
        $contacto = num_contacto::all();
        $email = Email::all();
        $rede_social_3 = rede_social::all();

        return view('pages.contacto')
            ->with('paises', $paises)
            ->with('contacto', $contacto)
            ->with('email', $email)
            ->with('rede_social_3', $rede_social_3);

    }

}
