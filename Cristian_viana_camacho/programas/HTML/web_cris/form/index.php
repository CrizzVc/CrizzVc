<html>

<head>
  <title>Registro</title>
  <link rel="stylesheet" href="bootstrap.css">
  <link rel="stylesheet" href="mystyles.css">
</head>

<body>
  <section id="pantalla">
    <img 
      src="https://i.pinimg.com/736x/d9/b7/02/d9b70237f2569ba9dd5f386d16d95dab.jpg" 
      alt="gato"
      id="foto"
      width="300px"
      height= "320px"
    >
  
    <form id="cuadro" action="pag2.php" method="post">
      <h1 id="texto">Registrate</h1>
      <input type="text" placeholder="Nombre" name="name" required>
      <br>
      <input type="text" name="apellido" placeholder="Apellido" required>
      <br>
      <input type="text" name="adress" placeholder="dirección" required>
      <br>
      <input type="number" name="age" placeholder="edad" required>
      <br>
      <input type="email" name="correo" placeholder="alguien@gmail.com" required>
      <br>
      <select name="valor1" required>
        <option value="masculino">Masculino</option>
        <option value="Femenino">Femenino</option>
        <option value="otro">Otro</option>
      </select>
      <br>
      
      <div id="gustos">
        <h4>Ingrese gustos:</h4>
        <label
        ><input type="checkbox" name="check1" class="checks">perros</label>
        <label
        ><input type="checkbox" name="check2" class="checks">gatos</label>
        
      </div>
      
      <br>
      <select name="estudios">
        <option value="estudiante" default>estudiante</option>
        <option value="tecnico">tecnico</option>
        <option value="tecnologo">tecnologo</option>
        <option value="profecional">Profesional</option>
      </select>
      <br>
      <input class="btn btn-primary btn-lg" id="enviar" type="submit" name="enviar">
    </form>
  </section>
</body>

</html>


<!-- https://api.thecatapi.com/v1/images/search?format=json -->