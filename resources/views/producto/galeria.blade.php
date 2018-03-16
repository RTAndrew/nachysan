@extends('layouts.app')



@section('titulo-pagina', "Galeria -")


@section('stylesheet')
<link href="{{ asset('css/pagina-galeria.css') }}" rel="stylesheet">
@endsection




@section('header')

	<div class="header-wrapper-pagina-galeria">
		
		@include('inc.header')



		<!-- MOTTO do HEADER -->
              <div class="hero-quote">

                  <div class="grid-container quote-space">  
                    <div class="grid-y">

                      <div class="cell small-12 medium-12 large-12 motto-quote cssanimation blurIn">
                        <center id="example"> 
                         
                         <h1>Inspira-te!</h1>

                        </center>
                      </div>          
                    </div>
                  </div>


                  <div class="grid-container quote">
                    <div class="grid-y">

                      <div class="cell small-12 medium-12 large-12 animated slideInUp">
                        <center>
                         <p> Os nossos mais recentes <br> productos  em um único lugar. </p>
                        </center>        
                      </div>
                    </div>
                  </div>

              </div> 



	</div>




@endsection




@section('container')




<section class="productos-showcase">
	

  <div class="grid-container">
    
<!--   <p> <b> (Smartphones e Tablets) </b> Pressionar a imagem para carregar o restante das imagens. </p>
  <p> <b> (Desktops) </b>Passar o mouse para carregar o restante das imagens. </p>
  <br>
  <br> -->
    <div class="masonry-css">


      @foreach($productos as $producto)
        <div class="masonry-css-item">

        <img class="lazyload" data-src="{{ imagemProdutoNaoEncontrada($producto->thumbnail) }}" alt="{{ $producto->nome }}" />   
        <p> {{ $producto->nome }} </p>
        </div>


      @endforeach



    </div>


  </div>



</section>






@endsection




