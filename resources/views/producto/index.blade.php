@extends('layouts.app')


@section('titulo-pagina', 'Productos -')


@section('header')

	<div class="header-wrapper-productos"  id="sticky-section"> 
		
		@include('inc.header')


	<!-- MOTTO do HEADER -->
              <div class="hero-quote">

                  <div class="grid-container quote-space">  
                    <div class="grid-y">

                      <div class="cell small-12 medium-12 large-12 motto-quote cssanimation blurIn">
                        <center id="example"> 
                         
                         <h1>Vista o que lhe combina</h1>

                        </center>
                      </div>          
                    </div>
                  </div>


                  <div class="grid-container quote">
                    <div class="grid-y">

                      <div class="cell small-12 medium-12 large-12 animated slideInUp">
                        <center>
                         <p> Empodera-te. Desperta o que há em ti. Mostra do que és feito. </p>
                        </center>        
                      </div>
                    </div>
                  </div>

              </div> 

	</div>


@endsection






@section('container')


<!-- STICKY MENU PARA SMALL -->
<div class="menu-offcanvas" data-sticky-container data-sticky data-margin-top='0' data-top-anchor="sticky-section:bottom" data-options="stickyOn:small" style="width:100%; max-width:auto;">
	
		<div class="grid-x top-bar topbar-sticky-shrink grid-container">

			<ul class="menu align-left">
				<li> <a data-toggle="offCanvasLeft1"> <i class="icon ion-drag"></i> </a> </li>
            </ul>

            <ul class="menu align-left">
            	<li> <h2> Categoria de Produto </h2> </li> 
        	</ul>
        </div>

</div>

<div class="container-productos">
	<div class="grid-container">
		

		<div class="grid-x topbar-sticky-shrink-header" id="header">
		  	<div class="cell small-12 medium-12 large-12 off-canvas-wrapper">
			    <div class="off-canvas position-left" id="offCanvasLeft1" data-off-canvas>

			      	<div class="cell small-12 medium-12 large-12 side-bar ">

						<div class="categoria-menu">
							<h2 class="titulo-seccao-2">CATEGORIA DE PRODUCTOS</h2>
						</div>



						<div class="grid-y">
							<div class="side-bar">
								<ul class="vertical menu accordion-menu" data-accordion-menu>
								  
								  <li class="menu-categoria-group-space">
								  	 <a href="{{ route('productos.index') }}">Todos os Productos</a>
								  </li>

									@foreach($categorias as $categoria)

									  	<li class="menu-categoria-group-space">

										    @if( $categoria->sub_categoria->count() > 0)

										    	<a>{{ $categoria->nome }}</a>
													<!-- Transformar o submenu aberto -->
												    <ul class="menu vertical nested {{request()->categoria == $categoria->slug ? 'is-active' : ''}}">

													    <li> 
													    	<a href="{{ route('productos.index', ['categoria' => $categoria->slug]) }}">Tudo</a>
													    </li>

										    	@foreach($categoria->sub_categoria as $sub_categoria)

												     	<li><a href="{{ route('productos.index', ['categoria' => $categoria->slug, 'subcategoria' => $sub_categoria->slug]) }}">{{$sub_categoria->nome}}</a></li>

										    	@endforeach
												    </ul>

										    @else

											    <a href="{{ route('productos.index', ['categoria' => $categoria->slug]) }}">{{$categoria->nome}}</a>

										    @endif

									  	</li>
										


									@endforeach


								</ul>
							</div>
						</div>
					</div>
			    </div>


		    
			    <div class="off-canvas-content" data-off-canvas-content>
			      

					<div class="grid-x grid-margin-x grid-margin-y">



						<div class="cell small-12 medium-12 large-12">

							<div class="categoria-menu-active-page">
								<h2> {{ $categoriaNome }} </h2>
							</div>

						</div>





						@forelse ($productos as $producto)

							<div class="cell small-6 medium-4 large-3 produto">

				                @include('producto.producto')

				            </div>

						@empty

						<div class="cell small-12 medium-12 large-12">

							<p>Nenhum producto foi encontrado</p>
							
						</div>
						@endforelse
						

					</div>
					
					<center> <div class="paginacao">
						<!-- {{ $productos->links() }} -->
						{{ $productos->appends(request()->input())->links()  }}
					</div> </center>

				</div>

					
			</div>

	    </div>
	</div>
	
</div>
















	



@endsection

