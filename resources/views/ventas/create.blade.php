@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Realizar Venta</h1>

 @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
    @if(session('error'))
        <div class="alert alert-danger">
            {{ session('error') }}
        </div>
    @endif

    <!-- Formulario para realizar la venta -->
    <form method="POST" action="{{ route('ventas.realizar') }}" class="row g-3 needs-validation" novalidate>
        @csrf
        <div class="form-group">
            <label for="producto_id">Producto:</label>
    <select name="producto_id" class="form-control" required>
  <option value="">seleccione</option>
@foreach ( $producto  as  $p )
<option value="{{$p->id}}">{{$p->nombre}}</option>      
@endforeach
  
</select>             
  <div class="invalid-feedback">
       porfavor seleccione un producto
      </div>
        </div>
        <div class="form-group">
            <label for="cantidad">Cantidad:</label>
            <input type="number" id="cantidad" name="cantidad" class="form-control" min="1" required>
     <div class="invalid-feedback">
     porfavor digite  una cantidad  mayor  a 0
      </div>
        </div>

      <div class="col-12">

        <button type="submit" class="btn btn-primary">Realizar Venta</button>
 </div>


    
</form>
   </div>

<script>
(function () {
  'use strict'

  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()
    
</script>
@endsection