<footer>
      <div class="grid-container">

        <div class="grid-x grid-margin-x grid-padding-x footer-2 footer-show-medium">
            <div class="cell small-12 large-12 large-12 align-center">
              <center> <img src="{{ asset('img/logo-white.svg') }}" class="align-center"> </center>
            </div>
              
            <div class="cell small-12 large-12 large-12">
              
              <div class="grid-x lista-paises">
                
                @foreach($paises as $pais)


                <div class="cell small-6  medium-6 large-6 location">
                  <h1> {{ $pais->pais }} </h1>

                  
                    <p> {{ $pais->contacto->contacto }} </p>
                  

                  <p> {{ $pais->endereco }} </p>
                </div>
              
              @endforeach

              </div>

            </div>




          <div class="cell small-6 medium-3 large-3 footer-cell">
            <div class="grid-y">
              
              
              <div class="cell small-12 medium-12 large-12 footer-header">
                <ul class="menu align-vertical">

                  @foreach($rede_social as $rede_social)
                  
                    @if ($rede_social->nome == "facebook" or $rede_social->nome == "Facebook" or $rede_social->nome == "FACEBOOK"  )

                      <li> <a href="{{ $rede_social->endereco_url }}"> <i class="icon ion-social-facebook"> </i> </a> </li>
                    
                    @endif


                    @if ($rede_social->nome == "instagram" or $rede_social->nome == "Instagram" or $rede_social->nome == "INSTAGRAM"  )

                      <li> <a href="{{ $rede_social->endereco_url }}"> <i class="icon ion-social-instagram"> </i> </a> </li>
                    
                    @endif

                  @endforeach


                                        
                </ul> 
              </div>
              
              
              <div class="cell small-12 medium-12 large-12 copyright">

                <p class="">©2017 - {{ date('Y') }} Nachy San, <br> Todos os direitos reservados.</p>                     
              
              </div>

            </div>
            
          </div>








          <div class="cell small-6 medium-3 large-3 footer-cell">
            <div class="grid-y">
              
              <div class="cell small-12 medium-12 large-12 footer-header">
                <h1> productos </h1>
              </div>
              
              <div class="cell small-12 medium-12 large-12">
                <a href="{{ route('productos.index') }}"> <h2> Productos </h2> </a>
              </div>
              
              <div class="cell small-12 medium-12 large-12">
                <a href="{{ route('pages.galeria') }}"> <h2> Galeria </h2> </a>
              </div>

            </div>
          </div>








          <div class="cell small-6 medium-3 large-3 footer-cell">
            <div class="grid-y">
              
              <div class="cell small-12 medium-12 large-12 footer-header">
                <h1> Categoria </h1>
              </div>
              
              @foreach($categorias as $categoria)
              <div class="cell small-12 medium-12 large-12">
                <a href="{{ route('productos.index', ['categoria' => $categoria->slug]) }}"> <h2> {{ $categoria->nome }} </h2> </a>
              </div>
              @endforeach

            </div>
          </div>








          <div class="cell small-6 medium-3 large-3 footer-cell">
            <div class="grid-y">
              
              <div class="cell small-12 medium-12 large-12 footer-header">
                <h1> Sobre </h1>
              </div>
              
              <div class="cell small-12 medium-12 large-12">
                <a href="{{ route('pages.sobre-nos') }}"> <h2> Nós </h2> </a>
              </div>
              
              
              <div class="cell small-12 medium-12 large-12">
                <a href="{{ route('pages.info') }}"> <h2> Informações </h2> </a>
              </div>

            </div>
          </div>








          <div class="cell small-12 medium-12 large-12 footer-cell align-middle">
            <div class="grid-y align-middle">
              
              

            </div>
          </div>


        </div>

















        <!-- FOOTER PARA SMALL SCREEN -->
        <div class="footer-show-small">

          <div class="grid-x">



            <div class="cell small-12 large-12 large-12 align-center">
             <center> <img src="{{ asset('img/logo-white.svg') }}" class="align-center"> </center>
            </div>
            
            <div class="cell small-12 medium-12 large-12">
              <div class="cell small-12 large-12 large-12">
              
              <div class="grid-x lista-paises">
                
                @foreach($paises as $pais)


                <div class="cell small-6  medium-6 large-6 location">
                  <h1> {{ $pais->pais }} </h1>

                  
                    <p> {{ $pais->contacto->contacto }} </p>
                  

                  <p> {{ $pais->endereco }} </p>
                </div>
              
              @endforeach

              </div>

            </div>
            </div>



          </div>






          <div class="grid-x footer-spacing">
            <div class="cell small-12 medium-12 large-12">
              <ul class="menu align-center">
                  <li> <a href="{{ route('pages.sobre-nos') }}"> Nós</a> </li>
                  <li> <a href="{{ route('productos.index') }}"> Productos </a> </li>
                  <li> <a href="{{ route('pages.galeria') }}"> Galeria </a> </li>
                  <li> <a href="{{ route('pages.contacto') }}"> Contacto </a> </li>
                  <li> <a href="{{ route('pages.info') }}"> Informações </a> </li>
              </ul>
            </div>

            <div class="cell small-12 medium-12 large-12 footer-spacing">
              <ul class="menu align-center">
                    @foreach($rede_social_2 as $rs)
                  
                      @if ($rs->nome == "facebook" or $rs->nome == "Facebook" or $rs->nome == "FACEBOOK")
                        
                        <li> <a href="{{ $rs->endereco_url }}"> <i class="icon ion-social-facebook"> </i> </a> </li>
                      
                      @endif


                      @if ($rs->nome == "instagram" or $rs->nome == "Instagram" or $rs->nome == "INSTAGRAM")

                        <li> <a href="{{ $rs->endereco_url }}"> <i class="icon ion-social-instagram"> </i> </a> </li>
                      
                      @endif

                  @endforeach                 
              </ul>
            </div>

            <div class="cell small-12 medium-12 large-12 copyright">

                <p class="">©2017-{{ date('Y') }} Nachy San, <br> Todos os direitos reservados.</p>                     
              
            </div>
          </div>









        </div>




        
      </div>


      <div class="grid-x  powered-by">
        
        <div class="cell small-12 medium-12 large-12">
          <p> Website Powered By RTAndrew </p>
        </div>

      </div>

    </footer>