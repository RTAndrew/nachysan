@extends('layouts.app')

@section('titulo-pagina', "$producto->nome -")


@section('stylesheet')
<link href="{{ asset('css/pagina-producto.css') }}" rel="stylesheet">
@endsection


@section('header')

	<div class="header-wrapper-pagina-geral">
		
		@include('inc.header')

	</div>


@endsection







@section('container')





<section class="pagina-producto">
	
	<div class="grid-container">

		<div class="grid-x grid-margin-x grid-margin-y pagina-producto-inner">
			

			<div class="cell small-12 medium-6 large-6">
				
				<div class="pagina-producto-imagem">
					
					<img class="producto-imagem cssanimation blurIn" src=" {{ imagemProdutoNaoEncontrada($producto->thumbnail) }} " alt="{{$producto->nome}}" />  
				</div>


				<div class="pagina-producto-thumbnails producto-thumbnail">



				    @if ( (json_decode($producto->imagens, true) > 0) and ($producto->imagens != "[]") )
						
						<ul class="menu align-left">
				    
				   			<li> 

						      	<a class="producto-thumbnail" 
							      	data-image="{{ imagemProdutoNaoEncontrada($producto->thumbnail) }}"> 
							      	<img src="{{ imagemProdutoNaoEncontrada($producto->thumbnail) }}" alt="{{ $producto->nome }}">
						      	</a> 

					      	</li>

						    @foreach( json_decode($producto->imagens, true) as $imagem )


						      <li> 
	
						      	<a class="producto-thumbnail" 
							      	data-image="{{ imagemProdutoNaoEncontrada($imagem) }}"> 
							      	<img src="{{ imagemProdutoNaoEncontrada($imagem) }}" alt="{{ $producto->nome }}">
						      	</a> 

						      </li>

			
							@endforeach


						</ul>

				   	@endif
						

				</div>



			</div>


			<div class="cell small-12 medium-6 large-6">
				
				<div class="pagina-producto-detalhes">
					
					<h2 class="producto-subcategoria"> Encontrado em: 

						@foreach($sub_categoria_nome as $sub_cat)

							{{$sub_cat->nome}}

						@endforeach

					</h2>
					
					<h1 class="producto-nome"> {{ $producto->nome }} </h1>

					<p class="producto-descricao">
						{!! $producto->descricao !!}
					</p>

					<hr>


					<!-- Preco do Producto, caso haver uma promocao -->
					@if ( ( $producto->preco_promocao != "" ) and ($producto->preco_promocao != 0) ) 


						<div class="producto-inline-preco">
							
							<h1 class="producto-preco">

								{{ getPreco($producto->preco_promocao) }}<span>kz</span>	
							
							</h1>
						 
						</div>

						<div class="producto-inline-preco">
							
							<h1 class="producto-preco-promocao">

								{{ getPreco($producto->preco) }}<span>kz</span>	
							
							</h1>

						</div>
					@else


						<div class="producto-inline-preco">
							
							<h1 class="producto-preco">

								{{ getPreco($producto->preco) }}<span>kz</span>	
							
							</h1>
						 
						</div>

					@endif


					
				</div>

			</div>


		</div>
		
	</div>

</section>


<section>
	<div class="grid-container">
			

		<div class="header-seccao"> 

	        <center>  
	          <h1 class="titulo-seccao-2"> Productos <br> Relacionados </h1>
	        </center>

	    </div>


		<div class="grid-x grid-margin-x grid-margin-y productos-relacionados">
			
			
			@forelse($productosRelacionados as $producto)


				<div class="cell small-6 medium-4 large-3">
					@include('producto.producto')
				</div>

			@empty

			<p>Sem productos relacionados</p>
			@endforelse
				
			
		</div>

	</div>
</section>








@endsection






<!-- Mudar a imagem do producto, CLICKANDO nos thumbnails -->
@section('script')

$('.producto-thumbnail').on('click', function() {
  $('.producto-imagem').attr('src', $(this).data('image'));
});



@endsection