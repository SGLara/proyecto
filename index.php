<!DOCTYPE html>
<html>
<head>
	<title>CREAR CUENTA</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="..\proyecto\diseño.css">
<link rel="icon" type="img/png" href="..\proyecto\imagenes\favicon\fav.png">
</head>
<body>
<center>
<img src="..\proyecto\imagenes\fl.png"></center>
<center><p><font color="white" size="45">Digite los Datos que se le piden a continuación<br>para crear su cuenta.</font></p></center>

<center>
<div id="form">
<form action="my_sql_conection.php" method="POST" autocomplete="off">
<img src="..\proyecto\imagenes\22.png" height="100">
<br>
<br>
<input type="text" name="id" disabled readonly size="40" value="Id de Usuario Automático">
<br>
<input type="text" name="nombre" size="40" placeholder="&#128123;  Escriba su nombre" required autofocus="">
<br>
<input type="text" name="apellido" size="40" placeholder="&#128123;  Escriba su apellido" required>
<br>
<input type="text" name="edad" size="40" placeholder="Escriba su edad" required>
<br>
<input type="text" name="sexo" size="40" placeholder="Escriba su sexo" required >
<br>
<input type="text" name="telefono" size="40" placeholder="&#128222;  Escriba su número de telefono" required>
<br>
<input type="email" name="correo" size="40"
 placeholder="&#9993;  Escriba su correo" required>
<br>
<input type="password" name="password" size="40"
 placeholder="Escriba su contraseña" required>
<br>
<input type="password" name="password_again" size="40"
  placeholder="Escriba su contraseña de nuevo" required> 
<br>
<br>
<input type="submit" name="enviar" value="CREAR CUENTA">
<br>
<br>
</form>
</div>
</center>
<audio src="..\proyecto\audios\Josean Log - Chachacha .mp3"></audio>

</body>
</html>