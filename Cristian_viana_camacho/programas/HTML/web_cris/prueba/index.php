<html>

<head>
  <title>Problema</title>
</head>

<body>
  <h1>registro de Estudiantes</h1>
  <form action="pag2.php" method="post">
    Ingrese nombre:
    <input type="text" name="nombre"><br>
    Ingrese mail:
    <input type="text" name="mail"><br>
    Seleccione el curso:
    <select name="codigocurso">
      <option value="1">PHP</option>
      <option value="2">ASP</option>
      <option value="3">JSP</option>
    </select>
    <br>
    <input type="submit" value="Registrar">
  </form>
</body>

</html>