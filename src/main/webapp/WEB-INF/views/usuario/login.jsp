<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IntraVita - Login</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
.btn {
  padding: 15px 35px;
  font-size: 18px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #166EE7;
  border: none;
  border-radius: 10px;
  box-shadow: 0 3px #999;
}

.btn:hover {background-color: #21DD27}

.b:active {
  background-color: #21DD27;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

span {
    padding: 20px;
    color: #DF0101;
    margin-left: 12px;
	font-weight: bold;
	font-size: 15px;
}


* {
   margin:0;
   padding:0
}
html,
body,
#wrap {
   height: 100%;
}
body > #wrap {
   height: auto;
   min-height: 100%;
}
#content {
   padding-bottom: 50px; /* Mis altura que el footer */
} 
#footer {
   position: relative;
   margin-top: -50px; /* Misma altura que el footer en negativo */
   height: 50px; /* Altura del footer */
   clear: both;
}

</style>


</head>
<body style="background-color: #2CC8E7;">

<div class="container">

			<center>
			<br/>
				<img src="http://i65.tinypic.com/2dvizyh.png" style="width:65%;">
			<br/>
			</center>

  
    
    <form action="login" method="post" id="formlogin">
    	<div class="row">
	 		<div class="col-md-8 col-md-offset-2">
	 			<br/>
	 			<label for="usr" style="color:white; font-size:15px;">Usuario:</label>
				<input name="txtUsuarioNombre" autofocus type="text" class="form-control" id="usr" placeholder="usuario" onFocus="if(this.value!='')this.value=''">
			</div>  
		</div>
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<label for="pwd" style="color:white; font-size:15px;">Contrase�a:</label>
				<input type="password" name="txtUsuarioClave" class="form-control" id="pwd" placeholder="password">
				<a href="irRecuperarCredenciales" style="color: white"><em>�Olvid� su contrase�a?</em></a>
			</div>	  
		</div>
	<div class="row">
		<div class="col-md-1 col-md-offset-5">
			<br/>
			<button class="btn login" type="submit">Iniciar Sesi�n</button>
			<br/>

		</div>	  
	</div>
	</form>	
	
	<br>
	<div class="row">
		<div class="col-md-1 col-md-offset-5">
			<form action="irRegistrar" method="get"><button class="btn login" type="submit">&nbsp;&nbsp;   Reg�strate   &nbsp;&nbsp;</button></form>
		</div>
	</div>
	<br>


	<div class="row">
		<div class="col-md-12">
			<span><em>${alerta}</em></span>
		</div>
	</div>

	
</div>

	<div class="col-md-12" style="position: fixed; bottom: 0;">
		<div class="panel-footer">
			<h5>� Copyright 2017 IntraVita. Todos los derechos reservados.</h5>
		</div>
	</div>



</body>
</html>