@extends('layouts.app')



@section('titulo-pagina', 'Contactos -')




@section('header')


	<div class="header-wrapper-contacto">
		
		@include('inc.header')


	<!-- MOTTO do HEADER -->
              <div class="hero-quote">

                  <div class="grid-container quote-space">  
                    <div class="grid-y">

                      <div class="cell small-12 medium-12 large-12 motto-quote cssanimation blurIn">
                        <center id="example"> 
                         
                         <h1> Contacte-nos </h1>

                        </center>
                      </div>          
                    </div>
                  </div>


                  <div class="grid-container quote">
                    <div class="grid-y">

                      <div class="cell small-12 medium-12 large-12 animated slideInUp">
                        <center>
	                        <p> Deseja fazer uma encomenda ao seu gosto? Gostaria de fazer uma parceria? </p>
	                     	<p> Então fale-nos sobre as suas ideias. </p>
                        </center>        
                      </div>
                    </div>
                  </div>

              </div> 

	</div>

@endsection













@section('container')




@include('inc.mensagem-contacto')

@endsection