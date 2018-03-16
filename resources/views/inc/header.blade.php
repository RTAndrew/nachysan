<!-- MENU PARA SMALL SCREENS -->


            <!-- MENU PARA O MEDIUM & LARGE SCREENS  -->
            <ul class="menu align-center align-middle menu-show-medium">
              <li><a href="/" class="{{ Request::is('/') ? 'is-active' : '' }}">HOME</a></li>
              <li><a href="/productos" class="{{ Request::is('productos') ? 'is-active' : '' }}">PRODUCTOS</a></li>
              <li><a href="/contacto" class="{{ Request::is('contacto') ? 'is-active' : '' }}">CONTACTO</a></li>


              <li> <a href="{{ route('pages.index')}}"> <img src="{{ asset('img/logo-white.svg') }}" > </a> </li> 


              <li><a href="/info" class="{{ Request::is('info') ? 'is-active' : '' }}">INFO</a></li>
              <li><a href="/sobre-nos" class="{{ Request::is('sobre-nos') ? 'is-active' : '' }}">NÓS</a></li>
              <li><a href="tel:{{ $num_contacto->contacto }}"> <i class="icon ion-ios-telephone-outline"></i>  {{ $num_contacto->contacto }} </a></li>
            </ul>






             <div class="grid-container menu-show-small">

                <div class="cell small-12 medium-12 large-12 off-canvas-wrapper">



                  <div class="off-canvas-content " data-off-canvas-content>

                    <div class="grid-x grid-marging-x align-justify align-middle">

                      <ul class="menu align-right" data-dropdown-menu>
                        <li>
                          <a data-toggle="offCanvasRightHeaderMenu"><i class="icon ion-drag icon-menu"></i> </a>
                        </li>
                      </ul>

                      <ul class="menu align-left">
                        <li> <a href="{{ route('pages.index')}}"> <img src="{{ asset('img/logo-white.svg') }}" > </a> </li> 
                      </ul>
                    
                    </div>

                  </div>






                  <div class="off-canvas position-left grid-container menu-header-offcanvas" id="offCanvasRightHeaderMenu" data-off-canvas>
                    <div class="grid-y side-bar">
                      
                      <div class="cell small-12 medium-12 large-12">

                        <div class="categoria-menu">
                          <h2 class="titulo-seccao-2">Menu</h2>
                        </div>

                      </div>
                      
                      <div class="cell small-12 medium-12 large-12">
                      
                      <ul class="menu vertical">
                        <li><a href="/" class="{{ Request::is('/') ? 'is-active' : '' }}">HOME</a></li>
                        <li><a href="/productos" class="{{ Request::is('productos') ? 'is-active' : '' }}">PRODUCTOS</a></li>
                        <li><a href="/contacto" class="{{ Request::is('contacto') ? 'is-active' : '' }}">CONTACTO</a></li>
                        <li><a href="/galeria" class="{{ Request::is('galeria') ? 'is-active' : '' }}">GALERIA</a></li>
                        <li><a href="/sobre-nos" class="{{ Request::is('sobre-nos') ? 'is-active' : '' }}">NÓS</a></li>
                        <li><a href="tel:{{ $num_contacto->contacto }}"> <i class="icon ion-ios-telephone-outline"></i>  {{ $num_contacto->contacto }} </a></li>
                      </ul>
                    
                      </div>
                    </div>

                  </div>


                  
                </div>
              
            </div>

