<?php
    include_once("ConectDB.php");
    session_start();

    $resultado = $connect->query("SELECT * FROM tb_usuario WHERE login = '{$_POST['login']}' AND senha = MD5('{$_POST['password']}')");
    $row = $resultado->fetch_assoc();
    if($row['login'] === $_POST['login'] && $row['senha'] === md5($_POST['password'])){
        $_SESSION['usuario'] = $row;
        echo true;
    }else{
        echo false;
    }
?>