<html>

<head>
  <title>Problema</title>
</head>

<body>
  <?php
  $conexion = mysqli_connect("localhost", "root", "toor", "base1") or
    die("Problemas con la conexión");

  $registros = mysqli_query($conexion, "select id,nombre,apellido,edad,correo,estudios,dirección,genero
                        from usuarios where correo='$_REQUEST[mail]'") or
    die("Problemas en el select:" . mysqli_error($conexion));

  if ($reg = mysqli_fetch_array($registros)) {
    echo "Id: " . $reg['id'] . "<br>";
    echo "Nombre: " . $reg['nombre'] . "<br>";
    echo "Apellido: " . $reg['apellido'] . "<br>";
    echo "Dirección: " . $reg['dirección'] . "<br>";
    echo "Edad: " . $reg['edad'] . "<br>";
    echo "Correo: " . $reg['correo'] . "<br>";
    echo "Genero: " . $reg['genero'] . "<br>";
    echo "Estudios: " . $reg['estudios'] . "<br>";
    // switch ($reg['codigoCurso']) {
    //   case 1:
    //     echo "PHP";
    //     break;
    //   case 2:
    //     echo "ASP";
    //     break;
    //   case 3:
    //     echo "JSP";
    //     break;
    // }
  } else {
    echo "No existe un alumno con ese mail.";
  }
  mysqli_close($conexion);
  ?>
</body>

</html>