<?php 
define('host','localhost');
define('user','root');
define('pass','');
define ('db','login_db');
$con=mysqli_connect(host,user,pass,db) or die("Error en la conexion".mysql_error());
    echo "<br><center>";
    echo "<h2>Los datos ingresados son:</h2>";
    $sql="select * from usuario";
	$result=mysqli_query($con,$sql) or die ("Error al ejecutar la consulta".mysql_error());
	echo "<table border = '1'> \n"; 
	echo "<tr><td>Id_usuario</td><td>Nombres</td><td>Apellidos</td><td>Edad</td><td>Sexo</td><td>Numero_de_telefono</td><td>Correo_electronico</td><td>password</td><td>repeat_password</tr> \n"; 
	while ($row = mysqli_fetch_row($result)){ 
    echo "<tr><td>$row[0]</td><td>$row[1]</td><td>$row[2]</td><td>$row[3]</td><td>$row[4]</td><td>$row[5]</td><td>$row[6]</td><td>$row[7]</td><td>$row[8]</td></tr> \n"; } 
echo "</table> \n"; 
echo "<center> \n";
echo "<br>";
echo "<table border='1' bgcolor='black'><tr><td><a href='../proyecto/index3.php'><font color='white'>REGRESAR</font></a></td></tr></table>";
?>