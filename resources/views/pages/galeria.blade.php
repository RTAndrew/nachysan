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
    
  <p> <b> (Smartphones e Tablets) </b> Pressionar a imagem para carregar o restante das imagens. </p>
  <p> <b> (Desktops) </b>Passar o mouse para carregar o restante das imagens. </p>
<br>
    <div class="masonry-css">


      @foreach($productos as $producto)
        <div class="masonry-css-item">

        <img class="cssanimation blurIn" src="{{ imagemProdutoNaoEncontrada($producto->thumbnail) }}" alt="{{ $producto->nome }}" 
          @if ((json_decode($producto->imagens, true) > 0) and ($producto->imagens != "[]") ) 
            data-mouseover="@foreach( json_decode($producto->imagens, true) as $imagem )
            {{asset('storage/'.$imagem)}}#900 @endforeach" 
          @endif
        />   
        </div>

      @endforeach



    </div>


  </div>



</section>






@endsection




@section('script')


$('img').on('mouseover', function() {
    var self = this,
        i = 0,
        images = $(this).data('mouseover').split(/\s+/);
    
    (function nextImage() {
        var next = images[i++ % images.length].split('#');
        $(self).data('timeout', setTimeout(function() {
            self.src = next[0];
            nextImage();
        }, next[1]));
    })();
    
}).on('mouseout', function() {
    clearTimeout($(this).data('timeout'));
    this.src = $(this).attr('src');
});



@endsection