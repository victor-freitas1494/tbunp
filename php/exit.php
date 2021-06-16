<?php
    session_destroy();
    unset($_SESSION['usuario'], $_SESSION['sys']);
    header('Location: ../sistema/login.html');
    exit();
    
?>