

@foreach($perfilStaff as $perfil)

	<div class="cell small-12 medium-6 large-4 staff-profile">
		<center>

			<div class="staff-profile-picture">
			
	    		 <img src="{{ imagemProdutoNaoEncontrada($perfil->imagem) }}"> 

	    	</div> 

	    </center>

		<div class="staff-profile-content">
			<h3> {{ $perfil->nome }} </h3>

			<h4> {{ $perfil->funcao }} </h4>

			{!! $perfil->descricao !!}
		</div>


		@if( 
		(( $perfil->facebook_link != null ) or ( $perfil->facebook_link != "" )) 
		or (( $perfil->instagram_link != null ) or ( $perfil->instagram != "" )) or 
		(( $perfil->youtube_link != null ) or ( $perfil->youtube != "" )) 
		)


			<div class="staff-profile-social-links">
				
				<ul class="menu left">

					@if(( $perfil->facebook_link != null ) or ( $perfil->facebook_link != "" ))
						<li> <a href="{{ $perfil->facebook_link }}" target="_blank"> <i class="icon ion-social-facebook"></i> </a> </li>
					@endif

					@if(( $perfil->instagram_link != null ) or ( $perfil->instagram != "" ))
						<li> <a href="{{ $perfil->instagram_link }}"> <i class="icon ion-social-instagram"></i> </a> </li>
					@endif

					@if(( $perfil->youtube_link != null ) or ( $perfil->youtube != "" ))
						<li> <a href="{{ $perfil->youtube_link }}"> <i class="icon ion-social-youtube"></i> </a> </li>
					@endif

				</ul>

			</div>


		@endif

	</div>

@endforeach