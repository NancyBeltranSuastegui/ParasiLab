<div class="container mt-3">
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">menu</button>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="?controller=usuario&action=admtema">Administrar teoria</a>
				<a class="dropdown-item" href="?controller=usuario&action=admlaberinto">Administrar laberinto</a>
				<a class="dropdown-item" href="?controller=usuario&action=admmemorama">Administrar memorama</a>
				<a class="dropdown-item" href="?controller=usuario&action=admrompecabeza">Administrar rompecabeza</a>
				<a class="dropdown-item" href="?controller=usuario&action=admsopa">Administrar sopa de letras</a>
				<a class="dropdown-item" href="?controller=usuario&action=admcrucigrama">Administrar crucigrama de imagenes</a>
			</div>
			<a href="?controller=usuario&action=inicio" class="btn btn-outline-secondary">Inicio</a>
		</div>
		<input type="text" class="form-control" aria-label="Text input with dropdown button" disabled="true">
		<div class="input-group-append">
			<label class="input-group-text"><?php echo $user->nombre; ?></label>
			<button id="logout" class="btn btn-outline-secondary">Cerrar Sesion</button>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('#logout').click(function(event){
			event.preventDefault();
			$.post('index.php?controller=usuario&action=logout',
			{
				usuario : $('#usuario').val(),
				contrasena : $('#contrasena').val()
			},function(dato){
				switch(dato){
					case 'true':
						window.location.href = 'index.php?controller=inicio&action=inicio';
					break;
					case 'usuario incorrecto':
						alert('usuario o contraseña erronea verifique su informacion');
					break;
					case 'false':
						alert('usuario o contraseña erronea verifique su informacion');
					break;
				}
			});
		});
	});
</script>
