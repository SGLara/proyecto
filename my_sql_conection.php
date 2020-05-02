<!DOCTYPE html>
<html>
<head>
	<title>LOG IN</title>
  <meta charset="utf-8">
  <link rel="icon" type="img/png" href="..\proyecto\imagenes\favicon\fav.png">
  <link rel="stylesheet" type="text/css" href="..\proyecto\diseño2.css">
</head>
<body>
<?php
define('host','localhost');
define('user','root');
define('pass','');
define ('db','login_db');



$con=mysqli_connect(host,user,pass,db) or die("Error en la conexion".mysql_error());
$sql="insert into usuario(Id_usuario, Nombres, Apellidos, Edad, Sexo, Numero_de_telefono, Correo_electronico, password, repeat_password) value(null, '$_POST[nombre]', '$_POST[apellido]', '$_POST[edad]', '$_POST[sexo]', '$_POST[telefono]', '$_POST[correo]','$_POST[password]', '$_POST[password_again]')";
$result=mysqli_query($con,$sql) or die ("Error en la consulta".mysql_error());
if (!$result)
  {
    echo "Error en la consulta SQL, esta contiene errores.".mysql_error();
    exit();  
  }

else
  {

    echo "<center><img src='../proyecto/imagenes/dc.png' height='100'></center>";
    echo "<center><h1><font color='white'>Ya puedes Iniciar Sesión</font></h1></center>";

  } 


?>


<center>
<div id="form2">
<form method="POST" autocomplete="on">
<img src="..\proyecto\imagenes\22.png" height="100">
<br>
<br>        
<input type="email" name="correo" size="40"
 placeholder="&#9993;  Escriba su correo" required>
<br>
<input type="password" name="password" size="40"
 placeholder="Escriba su contraseña" required>
<br>
<br>
<a href="..\proyecto\index3.php"><img src="..\proyecto\imagenes\b.png" height="60"></a>
<br>
<br>
</form>
</div>
</center>

<audio src="..\proyecto\audios\Mon Laferte - Yo Te Qui .mp3" autoplay=""></audio>

</body>
</html>




