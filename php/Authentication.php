<?php
    include_once("ConectDB.php");

    $resultado = $connect->query("SELECT login, senha FROM tb_usuarios WHERE login = '{$_POST['login']}' AND senha = MD5('{$_POST['password']}')");

    $row = $resultado->fetch_assoc();

    if($row['login'] === $_POST['login'] && $row['senha'] === md5($_POST['password'])){
        echo true;
    }else{
        echo false;
    }
?>