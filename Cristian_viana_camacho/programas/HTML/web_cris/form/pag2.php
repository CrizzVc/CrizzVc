<html>

<head>
  <title>respuesta</title>
  <link rel="stylesheet" href="bootstrap.css">
</head>

<body>
  
  <?php
  if (isset($_POST['enviar'])) {
    $conexion = mysqli_connect("localhost", "root", "toor", "base1") or
    die("Problemas con la conexión");
    mysqli_query($conexion, "insert into usuarios(nombre,apellido,genero,edad,estudios,dirección,correo) values 
                        ('$_POST[name]','$_POST[apellido]','$_POST[valor1]',$_POST[age],'$_POST[estudios]','$_POST[adress]','$_POST[correo]')")
      or die("Problemas en el select" . mysqli_error($conexion));
    mysqli_close($conexion);

    echo "registrado con exito.";
  }
  ?>

  <section>
      <div class="card" style="width: 18rem;">
        <img id="cat" src="..." class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Bienvenido <?= $_POST['name']?></h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>

  </section>

 <script src="script.js"></script>

</body>

</html>