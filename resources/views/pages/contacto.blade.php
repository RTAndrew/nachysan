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



<section class="contacto-section">
    <div class="grid-container">
      
      <div class="header-seccao"> 

        <center>  
          <h1 class="titulo-seccao"> Sinta-se à vontade </h1>
              <p class="p-seccao"> A nossa linha está aberta 12hr por dia </p> 
          </center>

      </div>

      <div class="grid-x grid-padding-x contacto-inner-wrapper">
        <div class="cell small-12 medium-4 large-3">
          <div class="grid-x grid-margin-y">
            
            @foreach($paises as $pais)
              <div class="cell small-12 medium-12 large-12 pais">
                <h1>{{ $pais->pais }}</h1>
                <h1>Contacto: <span>{{ $pais->contacto->contacto }}</span> </h1>
                <h1>Endereço: <span> {{ $pais->endereco }}  </span> </h1>
      
              </div>
                    
            @endforeach
            
          </div>
        </div>
        
        <!-- ESPACAMENTO NO MEIO -->
        <div class="cell small-12 medium-4 large-5">
        </div>
        
        <div class="cell small-12 medium-4 large-4">
          
        
          <div class="grid-x">
            
            <div class=" cell small-12 medium-12 large-12 pais-extra-content">
              
              <h1 class="titulo-seccao-3"> Extra </h1>

              



              
              <div class="grid-x inner-contacto">

                  <div class="cell small-2 medium-2 large-2">
                    <i class="icon ion-ios-telephone-outline"></i> 
                  </div>

                  <div class="cell small-10 medium-10 large-10 descricao-contacto">
                    @foreach($contacto as $contacto)
                      <p> {{ $contacto->contacto }} </p>
                    @endforeach
                  </div>

              </div>




              <div class="grid-x inner-contacto">

                  <div class="cell small-2 medium-2 large-2">
                    <i class="icon ion-ios-email-outline"></i> 
                  </div>

                  <div class="cell small-10 medium-10 large-10 descricao-contacto">
                    @foreach($email as $email)
                      <p> {{ $email->email }} </p>
                    @endforeach
                  </div>

              </div>
          

            </div>


            <div class=" cell small-12 medium-12 large-12 pais-extra-content">

              <div class="grid-x">
            
                <div class=" cell small-12 medium-12 large-12">
                  
                  <h1 class="titulo-seccao-3"> Redes Sociais </h1>


                  <div class="grid-x inner-contacto">
                        @foreach($rede_social_3 as $redes)
                          <p>  </p>
                         
                            <div class="cell small-2 medium-2 large-2">
                              
                            </div>
                         
                          <div class="cell small-10 medium-10 large-10 descricao-contacto">
                            <a href="{{ $redes->endereco_url }}"> {{ $redes->nome }} </a>
                          </div>

                        @endforeach
                   </div>

                </div>
              </div>
            </div>
          </div>
        </div>












  </section>


@endsection