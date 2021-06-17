<?php
    include_once("ConectDB.php");
    $cadastro = $connect->query("INSERT INTO `tb_evento` (`nome_evento`, `data_evt`, `fk_usuario`) VALUES ('{$_POST['nome_evento']}', '{$_POST['data_evt']}', '{$_POST['fk_usuario']}')");
    echo true;
?>