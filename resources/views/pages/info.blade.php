@extends('layouts.app')




@section('titulo-pagina', "Informação -")






@section('header')

	<div class="header-wrapper-pagina-geral">
		
		@include('inc.header')

	</div>


@endsection







@section('container')




<div class="paginas-gerais">
	
	<div class="info-container">
		

		<section>
			

			<div class="header-seccao"> 

		        <center>  
		          <h1 class="titulo-seccao-2"> Como Funciona? </h1>
		              <p class="p-seccao">  </p> 
		        </center>

		    </div>





			 <div class="grid-container">


			 	<div class="grid-x como-funciona"> 

					<div class="cell small-12 medium-3 large-3"></div>


				        <div class="cell small-12 medium-6 large-6 como-funciona-inner-wrapper">

				        	<p> Lorem ipsum dolor sit amet,consectetur adipisicing elit, sed do eiusmod
				        	tempor incididunt ut labore et dolore magna aliqua. </p>

				        </div>

					<div class="cell small-12 medium-3 large-3"></div>


			    </div>

			    <div class="grid-x grid-margin-y grid-margin-x grid-padding-x procedimento-compra-inner-wrapper">
			      
			    


			      <div class="cell small-6 medium-3 large-3">
			          <img src="{{asset('img/logistic-icons/search-package-icon.svg')}}">
			          <h2>Procure o que lhe combina.</h2>
			          <p>Aproveite e não perca a oportunidade de novos produtos. </p>
			      </div>
			      
			      <div class="cell small-6 medium-3 large-3">
			          <img src="{{asset('img/logistic-icons/call-icon.svg')}}">
			          <h2>Gostou? Faça o pedido. </h2>
			          <p> A nossa linha está aberta 12hr por dia. Sinta-se à vontade.</p>
			      </div>
			      
			      <div class="cell small-6 medium-3 large-3">
			          <img src="{{asset('img/logistic-icons/confirm-icon.svg')}}">
			          <h2> Confirme o pedido. </h2>
			          <p> Ligá-lo-emos para confirmar a disponibilidade de entrega. </p>
			      </div>
			      
			      <div class="cell small-6 medium-3 large-3">
			          <img src="{{asset('img/logistic-icons/deliver-person-icon.svg')}}">
			          <h2> Receba o producto. </h2>
			          <p> Frete grátis para compras superiores a $$. O pagamento é feito na entrega.</p>
			      </div>
			      

			    </div>
			  </div>






		</section>


















		<section>
			
			<div class="header-seccao"> 

		        <center>  
		          <h1 class="titulo-seccao">Encomendas </h1>
		              <p class="p-seccao">  </p> 
		        </center>

		    </div>


		</section>


















		<section>
			
			<div class="header-seccao"> 

		        <center>  
		          <h1 class="titulo-seccao"> Transporte & Entregas </h1>
		              <p class="p-seccao">  </p> 
		        </center>

		    </div>


		</section>







	</div>

</div>







@endsection