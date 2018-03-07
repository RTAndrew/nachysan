<div class="produto">
									
    <div class="inner-produto">

		<div class="img-produto"> 
			<a href="{{ route('productos.producto', $producto->slug)}}"> 
				<!-- <img class="lazyload" data-src="{{ asset('img/'.$producto->thumbnail) }}.jpg" alt="{{$producto->nome}}" />   -->
				<img class="lazyload" data-src="{{ imagemProdutoNaoEncontrada($producto->thumbnail) }}" alt="{{$producto->nome}}" />  
			</a> 
		</div>
      
		<div class="inner-produto-content">
		 
			<h1 class="novo-produto">  {{ getDiffProductoData($producto->created_at) }} </h1>

		  <a href="{{ route('productos.producto', $producto->slug)}}"> 
		  	<h1  class="nome-produto"> {{$producto->nome}} </h1> 
		  </a>
		  
				<!-- Preco do Producto, caso haver uma promocao -->
				@if ( ( $producto->preco_promocao != "" ) and ($producto->preco_promocao != 0) ) 
		  
		  			<h1 class="preco-produto"> {{ getPreco($producto->preco_promocao) }}kz  </h1>

		  			<span class="preco-promocao-produto"> {{ getPreco($producto->preco) }}kz </span>  

				@else

					<h1 class="preco-produto"> {{ getPreco($producto->preco) }}kz  </h1>

				@endif








		</div>
      
    </div>

</div>