<?php
    include_once("ConectDB.php");
    $cadastro = $connect->query("UPDATE `tb_usuario` SET `nome` = '{$_POST['nome']}', `login` = '{$_POST['login']}', `senha` = MD5('{$_POST['senha']}'), `cargo` =  '{$_POST['cargo']}' WHERE `tb_usuario`.`id_usuario` = {$_POST['id_usuario']}");
    echo true;
?>