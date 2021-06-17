<?php
    include_once("ConectDB.php");
    $cadastro = $connect->query("INSERT INTO `tb_usuario` (`nome`, `data_nasc`, `login`, `senha`, `cargo`) VALUES ('{$_POST['nome']}', '{$_POST['data_nasc']}', '{$_POST['login']}', MD5('{$_POST['senha']}'), '{$_POST['cargo']}')");
    echo true;
?>