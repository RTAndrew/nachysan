<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title> @yield('titulo-pagina') {{ config('app.name', 'Nachy San') }}</title>



        <link rel="icon" type="image/png" sizes="16x16" href="/favicon-32.png">


        <!-- Fonts -->
            <!-- OPEN SANS -->
            <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet"> 
            <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400i,700i" rel="stylesheet">
            
            <!-- ionicons -->
            <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />

        @yield('stylesheet')
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        <link href="{{ asset('css/index.css') }}" rel="stylesheet">
        <link href="{{ asset('css/style-index.css') }}" rel="stylesheet">

        <!-- CSS ANIMATION -->
        <link href="{{ asset('libraries/cssanimation.min.css') }}" rel="stylesheet">
        <link href="{{ asset('libraries/cssanimate/animate.min.css') }}" rel="stylesheet">
        
        
    </head>
    <body>
        

    
    <header class="header" id="header"> 

      <!-- MENSAGENS CALLOUT -->
      <!-- ERROS, ALERTAS, WARNINGS, SUCESSOS -->
      @include('inc.flash-message')



      <!-- RECEBER O HEADER -->
      @yield('header')

        
    </header>
    

    <div class="container"  style="background-color: #f4f4f4;" >
        



      <!-- RECEBER O CONTEUDO DO BODY -->
      @yield('container')

    </div>




    <!-- INCLUIR O FOOTER -->
    @include('inc.footer')





    
      
    

    <script src="{{ asset('js/vendor/jquery.js') }} "></script>
    <script src="{{ asset('js/vendor/what-input.js') }} "></script>
    <script src="{{ asset('js/vendor/foundation.min.js') }} "></script>
    

       <!-- SCROLL REVEAL -->
      <script src="{{ asset('libraries/wowjs/wow.min.js') }}"></script>

      <!-- LAZY LOADER -->
      <script src="{{ asset('libraries/lazyload/lazysizes.min.js') }}" async=""></script>


      <script>
          $(document).foundation();
          new WOW().init();
      </script>



      <!-- RECEBER OS SCRIPTS NECESSARIOS DE CADA PAGINA -->
      <script>

        @yield('script')
        
      </script>


      




    </body>
</html>
