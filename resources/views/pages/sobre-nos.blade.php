@extends('layouts.app')



@section('titulo-pagina', 'Sobre Nós -')




@section('header')



	<div class="sobre-nos-wrapper-productos">
		
		@include('inc.header')


	<!-- MOTTO do HEADER -->
              <div class="hero-quote">

                  <div class="grid-container quote-space">  
                    <div class="grid-y">

                      <div class="cell small-12 medium-12 large-12 motto-quote cssanimation blurIn">
                        <center id="example"> 
                         
                         <h1>Quem Somos Nós?</h1>

                        </center>
                      </div>          
                    </div>
                  </div>


                  <div class="grid-container quote">
                    <div class="grid-y">

                      <div class="cell small-12 medium-12 large-12 animated slideInUp">
                        <center>
                         <p> Nosso propósito. Nossa história. L'Équipe. </p>
                        </center>        
                      </div>
                    </div>
                  </div>

              </div> 

	</div>



@endsection













@section('container')


<div class="sobre-nos-container">
	
	<section class="nossas-crencas">
		<div class="grid-container">
			
			<div class="header-seccao"> 

				<center>	
					<h1 class="titulo-seccao"> NOSSAS CRENÇAS </h1>
			        <p class="p-seccao"> Aquilo em Que Acreditamos </p> 
		     	</center>

			</div>
			
			<div class="grid-x"> 

				<div class="cell small-12 medium-3 large-3"></div>


		        <div class="cell small-12 medium-6 large-6 nossas-crencas-missao">
		        	<p> Lorem ipsum dolor sit amet,consectetur adipisicing elit, sed do eiusmod
		        	tempor incididunt ut labore et dolore magna aliqua. </p>

		        	<p> Ut enim ad minim veniam,
		        	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		        	consequat. </p>
		        	
		        </div>

				<div class="cell small-12 medium-3 large-3"></div>


		    </div>

		</div>
	</section>





	
	
	<section class="historia">
		<div class="grid-container">
			
			<div class="header-seccao"> 

				<center>	
					<h1 class="titulo-seccao"> História </h1>
			        <p class="p-seccao"> Como tudo começou </p> 
		     	</center>

			</div>

			<div class="grid-x grid-padding-x historia-inner-wrapper">
				

				<div class="cell small-12 medium-4 large-3 historia-quote">
					
					<blockquote> productos com a liberdade de respirar e expressar uma identidade própria. </blockquote>

				</div>
				

				<div class="cell small-12 medium-8 large-3">
					

				</div>

				<div class=" cell small-12 medium-6 large-3 historia-content">
					<p class="first-child"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. </p>

					<p> Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>
				</div>

				<div class=" cell small-12 medium-6 large-3 historia-content">
					<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>
				</div>


			</div>

	        

		</div>
	</section>





	
	
	<section class="staff">
		<div class="grid-container">
			
			<div class="header-seccao"> 

				<center>	
					<h1 class="titulo-seccao"> L'Équipe </h1>
			        <p class="p-seccao"> Nós </p> 
		     	</center>

			</div>

	        <div class="grid-x grid-margin-y  grid-margin-x staff-inner-wrapper">







		        



	        	@include('inc.staff-profile')



		        <!-- <div class="cell small-12 medium-6 large-4 staff-profile">
		        	<center>

		        		<div class="staff-profile-picture">
		        		
			        		 <img src="{{asset('img/staff/angola.png')}}"> 

			        	</div> 

			        </center>

		        	<div class="staff-profile-content">
		        		<h3> Arlete Nachiungo </h3>

		        		<h4> Lorem ipsum dolor sit amet. </h4>

		        		<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		        		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		        		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		        		consequat. </p>
		        	</div>

		        	<div class="staff-profile-social-links">
		        		
		        		<ul class="menu left">
		        			<li> <a href=""> <i class="icon ion-social-facebook"></i> </a> </li>
		        			<li> <a href=""> <i class="icon ion-social-instagram"></i> </a> </li>
		        		</ul>

		        	</div>

		        </div>







		        <div class="cell small-12 medium-6 large-4 staff-profile">
		        	<center>

		        		<div class="staff-profile-picture">
		        		
			        		 <img src="{{asset('img/produto (1).jpg')}}"> 

			        	</div> 

			        </center>

		        	<div class="staff-profile-content">
		        		<h3> Arlete Nachiungo </h3>

		        		<h4> Lorem ipsum dolor sit amet. </h4>

		        		<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		        		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		        		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		        		consequat. </p>
		        	</div>

		        	<div class="staff-profile-social-links">
		        		
		        		<ul class="menu left">
		        			<li> <a href=""> <i class="icon ion-social-facebook"></i> </a> </li>
		        			<li> <a href=""> <i class="icon ion-social-instagram"></i> </a> </li>
		        		</ul>

		        	</div>

		        </div>







		        <div class="cell small-12 medium-6 large-4 staff-profile">
		        	<center>

		        		<div class="staff-profile-picture">
		        		
			        		 <img src="{{asset('img/staff/angola.png')}}"> 

			        	</div> 

			        </center>

		        	<div class="staff-profile-content">
		        		<h3> Arlete Nachiungo </h3>

		        		<h4> Lorem ipsum dolor sit amet. </h4>

		        		<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		        		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		        		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		        		consequat. </p>
		        	</div>

		        	<div class="staff-profile-social-links">
		        		
		        		<ul class="menu left">
		        			<li> <a href=""> <i class="icon ion-social-facebook"></i> </a> </li>
		        			<li> <a href=""> <i class="icon ion-social-instagram"></i> </a> </li>
		        		</ul>

		        	</div>

		        </div>









		    </div> -->
		</div>
	</section>





	
	
	<section class="mcma">
		<div class="grid-container">
			
			
			<div class="header-seccao"> 

				<center>	
					<h1 class="titulo-seccao-2"> Menos Conversa <br> Mais Artesanato </h1>
			        <!-- <p class="p-seccao"> Nós </p>  -->
		     	</center>

			</div>

	        

	        <div class="grid-x mcma-cta-section">

		    	<div class="cell small-12 medium-12 large-12">
		    		<center>
	    		
				        <a href="/productos"> <button class="btn btn-1 btn-1e animated slideInLeft is-active"> FAÇA PARTE DA CULTURA </button>  </a>
			    		
		    			
				        <a href="tel:+244932337220"> <button class="btn btn-1 btn-1e animated slideInRight"> <i class="icon ion-ios-telephone-outline"></i> ENCOMENDE AO SEU CRITÉRIO </button>  </a>
			    	</center>
		    		
		    	</div>

		    </div>

		</div>
	</section>

</div>



@endsection