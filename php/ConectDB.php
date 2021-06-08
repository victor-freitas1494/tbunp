<?php
    $Server = "localhost";
    $User = "root";
    $Passe = "usbw";
    $basedados = "tbunp";

    $connect = new mysqli($Server, $User, $Passe, $basedados);

    /*
    $resultado = $connect->query("SELECT nome FROM tb_usuarios");

    $row = $resultado->fetch_assoc();

    echo htmlentities($row['nome']);
    */
?>