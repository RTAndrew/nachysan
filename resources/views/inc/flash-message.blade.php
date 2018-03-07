 

 <!-- SUCESS -->
<!--  @if(session('success'))

  <div class="grid-x">
    

    <div class="success callout cell small-12 medium-12 large-12" data-closable>
      <i class="icon ion-ios-checkmark"></i> 

      <div class="menssage">
	      <p> Sucesso!</p> <p class="secondary"> {{ session('success') }}</p>
      </div>

      <button class="close-button" aria-label="Dismiss alert" type="button" data-close>
        <span aria-hidden="true">&times;</span>
      </button>
    </div>

    
  </div>  

 @endif -->


 
 <!-- SUCESS -->
 @if(session()->has('success'))

  <div class="grid-x">
    

    <div class="success callout cell small-12 medium-12 large-12" data-closable>
      <i class="icon ion-ios-checkmark"></i> 

      <div class="menssage">
	      <p> Sucesso!</p> <p class="secondary"> {{ session()->get('success') }}</p>
      </div>

      <button class="close-button" aria-label="Dismiss alert" type="button" data-close>
        <span aria-hidden="true">&times;</span>
      </button>
    </div>

    
  </div>  

 @endif



@if(session()->has('warning'))
<!-- WARNING -->
  <div class="grid-x">
    

    <div class="warning callout cell small-12 medium-12 large-12" data-closable>
      <i class="icon ion-ios-close"></i> 
      
      <div class="menssage">
	      <p> Erro!</p> <p class="secondary"> {{ session()->get('warning') }}</p>
      </div>
      
      <button class="close-button" aria-label="Dismiss alert" type="button" data-close>
        <span aria-hidden="true">&times;</span>
      </button>
    </div>

    
  </div>
 @endif



@if(session()->has('alert'))
<!-- ALERT -->
  <div class="grid-x">
    

    <div class="alert callout cell small-12 medium-12 large-12" data-closable>
      <i class="icon ion-ios-information"></i> 
      
      <div class="menssage">
	      <p> Atenção!</p> <p class="secondary"> {{ session()->get('alert') }}</p>
      </div>
      
      <button class="close-button" aria-label="Dismiss alert" type="button" data-close>
        <span aria-hidden="true">&times;</span>
      </button>
    </div>

    
  </div>

 @endif
  
  