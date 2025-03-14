<html>
<html>

<head>
  <title>Problema</title>
</head>

<body>
  <?php

  $ar = fopen("datos.txt", "a") or
  die("Problemas en la creacion");
  fputs($ar, $_REQUEST['nombre']);
  fputs($ar, "\n");
  fputs($ar, $_REQUEST['mail']);
  fputs($ar, "\n");
  fputs($ar, $_REQUEST['codigocurso']);
  fputs($ar, "\n");
  fputs($ar, "--------------------------------------------------------");
  fputs($ar, "\n");
  fclose($ar);
  echo "Los datos se cargaron correctamente.";
  echo " ";

  $conexion = mysqli_connect("localhost", "root", "toor", "base1") or
    die("Problemas con la conexión");
  mysqli_query($conexion, "insert into estudiantes(nombre,mail,codigoCurso) values 
                       ('$_REQUEST[nombre]','$_REQUEST[mail]',$_REQUEST[codigocurso])")
    or die("Problemas en el select" . mysqli_error($conexion));
  mysqli_close($conexion);

  echo "El alumno fue dado de alta.";
  ?>
</body>

</html>