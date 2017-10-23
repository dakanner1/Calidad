<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Panel administrador</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link REL=StyleSheet HREF="css/login.css" TYPE="text/css" MEDIA=screen>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-5 col-md-offset-1">
				<h1>
					Panel de administrador
				</h1>
			</div>
			<div class="col-md-4 col-md-offset-2">
				<br>
				<button type="button" class="btn btn-primary">Cambiar ROL</button>
			</div>
		</div>
	</div>
	
    <form action="promover" method="post">
    	<div class="row">
	 		<div class="col-md-8 col-md-offset-2">
	 			<label for="usr">Usuario:</label>
				<input name="txtUsuarioPromover" type="text" class="form-control" id="usr" placeholder="usuario">
			</div>  
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<button class="btn btn-info btn-block login" type="submit">Promover</button>
			</div>	  
		</div>
	</form>	
	<br>
    <form action="degradar" method="post">
    	<div class="row">
	 		<div class="col-md-8 col-md-offset-2">
	 			<label for="usr">Administrador:</label>
				<input name="txtAdminDegradar" type="text" class="form-control" id="usr" placeholder="administrador">
			</div>  
		</div>
				<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<button class="btn btn-info btn-block login" type="submit">Degradar</button>
			</div>	  
		</div>
	</form>	
	<br>
    <form action="borrar" method="post">
    	<div class="row">
	 		<div class="col-md-8 col-md-offset-2">
	 			<label for="usr">Usuario:</label>
				<input name="txtUsuarioBorrar" type="text" class="form-control" id="usr" placeholder="usuario">
			</div>  
		</div>
				<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<button class="btn btn-info btn-block login" type="submit">Borrar</button>
			</div>	  
		</div>
	</form>	
	<br>
    <form action="listarUsuario" method="post">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<button class="btn btn-info btn-block login" type="submit">Actualizar Lista</button>
			</div>	  
		</div>
	</form>
	<div class="row">
		<div class="col-md-12">
			${alerta}
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="col-md-8 col-md-offset-4">
				<h3>Usuarios</h3>
			</div>
				${usuarios}
		</div>
		<div class="col-md-6">
			<div class="col-md-8 col-md-offset-4">
				<h3>Administradores</h3>
			</div>
				${administradores}
		</div>
	</div>
</body>
</html>