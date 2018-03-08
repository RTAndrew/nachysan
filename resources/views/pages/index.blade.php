@extends('layouts.app')




@section('header')



  <div class="header-wrapper-home">
        

        @include('inc.header')

              <!-- MOTTO do HEADER -->
              <div class="hero-quote">

                  <div class="grid-container quote-space">  
                    <div class="grid-y">

                      <div class="cell small-12 medium-12 large-12 motto-quote">
                        <center id="example"> 
                         

                        </center>
                      </div>          
                    </div>
                  </div>


                  <div class="grid-container quote">
                    <div class="grid-y">

                      <div class="cell small-12 medium-12 large-12 animated slideInUp">
                        <center>
                         <p> Promovendo a identidade africana desde a ideia, a execução, até a implementação, <br> inserindo através do artesanato singularidade em cada linha e a cada botão. </p>
                        </center>        
                      </div>
                    </div>
                  </div>

                  <center> 
                    <a href="{{ route('productos.index')}}"> <button class="btn btn-1 btn-1e animated slideInUp"> FAÇA PARTE DA CULTURA </button>  </a>
                  </center>

              </div> 


  </div>




  
@endsection










@section('container')



<section class="nossas-crencas">

  <div class="grid-container">
    

    <div class="header-seccao"> 

        <center>  
          <h1 class="titulo-seccao"> Não é o que você veste <br> É o que você sente </h1>
              <p class="p-seccao"> Aquilo em Que Acreditamos </p> 
        </center>

    </div>


   


    <div class="grid-x grid-margin-y grid-margin-x nos">
      
      <div class="cell small-12 medium-1 large-1"></div>


      <div class="cell small-12 medium-3 large-3"> <span class="nossas-crencas-header-caps wow slideInLeft"> elegancia </span> <p>  ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. </p> </div>

      

      <div class="cell small-12 medium-3 large-3 ">
        <div class="margin-top-1x">

      <span class="nossas-crencas-header-caps wow slideInLeft"> unicidade </span> 

      <p>Ut enim ad minim veniam,
      quis nostrud exercitation ullamco laboris nisi ut aliquip.</p>  </div>
        </div>

      

      <div class="cell small-12 medium-3 large-3"> 

          <div class="margin-top-2x">



        <span class="nossas-crencas-header-caps  wow slideInLeft"> Confortabilidade </span> <p> ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. </p> </div>


      <div class="cell small-12 medium-1 large-1"></div>
      <div class="cell small-12 medium-1 large-1"></div>

    </div>

  </div>


  </div>




      <!-- <div class="grid-container">
        
        <h1 class="titulo-seccao"> NOSSAS CRENÇAS </h1>
        <p class="page-divider"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <center> <p class="p-seccao"> Aquilo em Que Acreditamos </p> </center> 
       

        <div class="grid-x grid-padding-x grid-padding-y gripd grid-margin-x grid-margin-y objectivos">

          <div class="cell small-12 medium-6 large-4 wow fadeInLeft">
            <center> <img src="img/unicidade-badge.svg"> </center>

            <p class="text-seccao"> 
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
              tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
              quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
              consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
              cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
              proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

            </p>
          </div>

          <div class="cell small-12 medium-6 large-4"> 
            <center> <img src="img/confo-badge.svg"> </center>

            <p> 
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
              tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
              quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
              consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
              cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
              proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

            </p>
          </div>

          <div class="cell small-12 medium-6 large-4 wow fadeInRight">
            <center> <img src="img/elegante-badge.svg"> </center>

            <p> 
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
              tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
              quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
              consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
              cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
              proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

            </p>
          </div>
          
        </div>

        <center> 
          <button class="btn btn-1 btn-1e wow slideInUp"> Saiba Mais Sobre Nós </button> 
        </center>
      </div> -->

    </section>





    <section class="produtos">

      <div class="grid-container">

        <div class="header-seccao"> 

          <center>  
            <h1 class="titulo-seccao"> Productos </h1>
            <p class="p-seccao"> Em destaque </p> 
          </center>

        </div>
        


        <div class="grid-x grid-margin-y grid-margin-x wow blurIn">

          @forelse ($productos as $producto)

            <div class="cell small-6 medium-4 large-3">

              @include('producto.producto')

            </div>

          @empty

            <div class="cell small-6 medium-4 large-12 produto">
              <p>Nenhum producto encontrado.</p>
            </div>

          @endforelse

        </div>  







      
 
      </div>
    

      <center> 
        <a href="{{ route('productos.index')}}"> <button class="btn btn-1 btn-1e wow fadeInUp" data-wow-delay="0.43s"> Todos os Produtos </button> </a>
      </center>

    </section>

    
    <section class="quote-section">
      

      <div class="grid-container">
        <div class="grid-x grid-margin-x grid-margin-y grid-padding-y grid-padding-x"> 
          <div class="cell small-8 small-offset-2 medium-6 medium-offset-3 large-7 large-offset-3 wow fadeInUp" data-wow-delay="0.30s">
            <p> Desde XXX a confessionar productos com a liberdade de respirar e expressar uma identidade própria.  </p>
          </div>
        </div>
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
          
                <button class="btn btn-1 btn-1e wow slideInUp is-active is-active-home"> Fazemos encomendas personalizadas </button>  
              
                
                <a href="tel:244932"> <button class="btn btn-1 btn-1e wow slideInUp"> <i class="icon ion-ios-telephone-outline"></i> Ligue já 932XXXXXX </a> </button>  </a>

            </center>
            
          </div>

        </div>

    </div>
  </section>

   








@endsection















@section('script')

  var texts = ["<h1 class='animated fadeInUp'> VISTA O QUE LHE COMBINA </h1>","<h1 class='animated fadeInUp'>SINTA O QUE LHE É CONFORTÁVEL </h1>", "<h1 class='cssanimation blurIn'>E atreva-se a ser único</h1>"];

      var count = 0;
      function changeText() {
          
           $("#example").html(texts[count]);
          count < 3 ? count++ : count = 0;
      }
      setInterval(changeText, 1500);

@endsection