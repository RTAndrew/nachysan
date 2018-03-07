 <section class="mensagem-contacto">

      
        
        <div class="grid-x">

          <div class="cell small-12 medium-8 large-8 bg-mensagem">
            
            <div class="grid-x mensagem wow slideInLeft" data-wow-delay="0.40s">

              <div class="cell small-12 medium-12 large-12 mensagem-contacto-spacing-header">
                <h1> Sinta-se à vontade e envie-nos uma mensagem. </h1>
                <span class="page-divider2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
              </div>

              <form class="cell small-12 medium-12 large-12">
              
                <div class="grid-x inner-mensagem"> 

                    <div class="cell small-12 medium-12 large-12">
                      <input type="text" id="middle-label" placeholder="Nome">
                    </div>

                    <div class="cell small-12 medium-5 large-5">
                      <input class="type" type="text" placeholder="E-Mail">
                    </div>

                    <div class="cell small-12 medium-6 medium-offset-1 large-6 large-offset-1 ">
                      <input class="type" type="text" placeholder="Terminal">
                    </div>

                    <div class="cell small-12 medium-12 large-12">
                      <textarea type="text" placeholder="Mensagem"></textarea>
                    </div>

                    <div class="align-right">
                      <button type="submit" class="btn btn-1 btn-1e"> Enviar </button>   
                    </div>
                    

                </div>

              </form>

              

            </div>

          </div>

           <div class="cell small-12 medium-4 large-4 bg-contacto">
            <div class="grid-x contacto wow slideInRight" data-wow-delay="0.40s">

              <div class="cell medium-12 large-12 mensagem-contacto-spacing-header">
                <h1> Contacto </h1>
                <span class="page-divider2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
              </div>

              <div class="cell medium-12 large-12">

                <div class="grid-x inner-contacto">

                  <div class="cell small-2 medium-2 large-2">
                    <i class="icon ion-ios-location-outline"></i>
                  </div>

                  <div class="cell small-10 medium-10 large-10 descricao-contacto">
                    <p>Luanda, Projecto Nova Vida, Rua 12, Apt. 5</p>
                    <p>Namibia, Widhoek, South's Village</p>
                  </div>

                </div>

                <div class="grid-x inner-contacto">

                  <div class="cell small-2 medium-2 large-2">
                    <i class="icon ion-ios-telephone-outline"></i> 
                  </div>

                  <div class="cell small-10 medium-10 large-10 descricao-contacto">
                    <p> +244 932 XXX XXX </p>
                    <p> +261 259 XXX XXX </p>
                  </div>

                </div>

                <div class="grid-x inner-contacto">

                  <div class="cell small-2 medium-2 large-2">
                    <i class="icon ion-ios-email-outline"></i>
                  </div>

                  <div class="cell small-10 medium-10 large-10 descricao-contacto">

                    <!-- FETCH OS CONTACTOS -->
                      @if (count($informacao_geral_email) > 0)

                        @foreach($informacao_geral_email as $informacao_geral_email )
                          <p> {{$informacao_geral_email->email}} </p>
                        @endforeach

                      @else

                          <p> Sem Email </p>

                      @endif
                  </div>

                 <!--  <div class="cell align-center social-icons-contacto">
                    <a href=""> <i class="icon ion-social-facebook"></i> </a>

                    <a href=""> <i class="icon ion-social-instagram"></i> </a>
                  </div> -->

                </div>

              </div>  

            </div>

              </div>

              

            </div>
          
           
        </div>

      </div>
      

    </section>