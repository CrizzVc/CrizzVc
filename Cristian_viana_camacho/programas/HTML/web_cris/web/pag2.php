<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style2.css">
</head>
<body>

    <section id="cuadro" class="scale-up-center">
        <img src="img/ñiaaa (☆ω☆).jpeg" alt="foto" id="foto">
        <?php 
            if (isset($_POST['enviar'])) {
            $nombre = $_POST['nombre'];
            $apodo = $_POST['nick'];
            $nombre = $_POST['nombre'];
            }
        ?>
        <h3 id="apodo">@<?=$apodo?></h3>
        <h1 id="datos">Bienvenido <?= $nombre?>!!</h1>

        <button id="boton" type="submit">⮕</button>
    </section>
    <div id="ball1"></div>
    <div id="ball2"></div>
    
</body>
</html>