<?php
    session_start();
    session_destroy();
    unset($_SESSION['usuario']);
    $_SESSION['sys'] = false;
    header('Location: ../sistema/login.html');
    exit();
    
?>