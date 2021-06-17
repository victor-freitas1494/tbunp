<?php
    include_once('../php/Authentication.php');
    include_once("../php/ConectDB.php"); 
    session_start();
    if($_SESSION['sys'] != false || $_SESSION['sys'] == !null){
        header('Location: ../php/exit.php');
    }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/master.css">
        <link rel="stylesheet" href="../css/dashboard.css">
        <link rel="stylesheet" href="../css/newuser.css">
        
        <title>Cadastro de Usuário</title>
    </head>
    <body>
        <div class="nav-dash">
            <div class="nav-dash-user">
                <img src="http://simpleicon.com/wp-content/uploads/user1.png" alt="">
                <p class="h5">Bem Vindo<p class="h6"><?php echo $_SESSION['usuario']['nome'];?></p></p>
            </div>

                    <div class="nav-dash-menu d-flex flex-column flex-shrink-0 p-4 ">
                        <ul class="nav nav-pills flex-column mb-auto">
                            <li class="nav-item"><a href="" class="nav-link active"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
                                <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
                            </svg> Início</a></li>
                        <?php if($_SESSION['usuario']['cargo'] == 'administrador' || $_SESSION['usuario']['cargo'] == 'juiz'){?>
                            <li><a href="dashboardUser.php" class="nav-link text-dark"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                            </svg> Usuários</a></li>
                        <?php }?>
                            <li><a href="evento.php" class="nav-link text-dark"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-controller" viewBox="0 0 16 16">
                                <path d="M11.5 6.027a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm-1.5 1.5a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1zm2.5-.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm-1.5 1.5a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1zm-6.5-3h1v1h1v1h-1v1h-1v-1h-1v-1h1v-1z"/>
                                <path d="M3.051 3.26a.5.5 0 0 1 .354-.613l1.932-.518a.5.5 0 0 1 .62.39c.655-.079 1.35-.117 2.043-.117.72 0 1.443.041 2.12.126a.5.5 0 0 1 .622-.399l1.932.518a.5.5 0 0 1 .306.729c.14.09.266.19.373.297.408.408.78 1.05 1.095 1.772.32.733.599 1.591.805 2.466.206.875.34 1.78.364 2.606.024.816-.059 1.602-.328 2.21a1.42 1.42 0 0 1-1.445.83c-.636-.067-1.115-.394-1.513-.773-.245-.232-.496-.526-.739-.808-.126-.148-.25-.292-.368-.423-.728-.804-1.597-1.527-3.224-1.527-1.627 0-2.496.723-3.224 1.527-.119.131-.242.275-.368.423-.243.282-.494.575-.739.808-.398.38-.877.706-1.513.773a1.42 1.42 0 0 1-1.445-.83c-.27-.608-.352-1.395-.329-2.21.024-.826.16-1.73.365-2.606.206-.875.486-1.733.805-2.466.315-.722.687-1.364 1.094-1.772a2.34 2.34 0 0 1 .433-.335.504.504 0 0 1-.028-.079zm2.036.412c-.877.185-1.469.443-1.733.708-.276.276-.587.783-.885 1.465a13.748 13.748 0 0 0-.748 2.295 12.351 12.351 0 0 0-.339 2.406c-.022.755.062 1.368.243 1.776a.42.42 0 0 0 .426.24c.327-.034.61-.199.929-.502.212-.202.4-.423.615-.674.133-.156.276-.323.44-.504C4.861 9.969 5.978 9.027 8 9.027s3.139.942 3.965 1.855c.164.181.307.348.44.504.214.251.403.472.615.674.318.303.601.468.929.503a.42.42 0 0 0 .426-.241c.18-.408.265-1.02.243-1.776a12.354 12.354 0 0 0-.339-2.406 13.753 13.753 0 0 0-.748-2.295c-.298-.682-.61-1.19-.885-1.465-.264-.265-.856-.523-1.733-.708-.85-.179-1.877-.27-2.913-.27-1.036 0-2.063.091-2.913.27z"/>
                            </svg> Eventos</a></li>
                            <li><a href="../php/exit.php" class="nav-link text-dark"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
                                <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                            </svg> Logout</a></li>
                        </ul>
            </div> 
        </div>

        <?php
            if ($_SESSION['usuario']['cargo'] == 'administrador' or 'juiz'){
        ?>
        <div class="container">
            <div class="row margem">
                
                <div class="input-group mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-default">Nome Completo</span>
                    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id="inputNome">
                </div>

                <div class="input-group mb-3">
                </style>
                    <span class="input-group-text" id="inputGroup-sizing-default">Data de Nascimento</span>
                    <input name="date" type="text" onfocus="(this.type='date')" onblur="if(!this.value)this.type='text'" class="form-control"
                    aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id="inputDate">
                </div>
                
                <div class="input-group mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-default">Usuário</span>
                    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id="inputUser">
                </div>

                <div class="input-group mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-default">Senha</span>
                    <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id="inputPassword">
                </div>

                <div class="input-group mb-3">
                    <span class="input-group-text" id="inputGroup-sizing-default">Cargo</span>
                    <select class="form-select" aria-label="Default select example" id="selectCargo">
                    <option selected></option>
                    <?php
                        $consultpermissao = $connect->query("SELECT * FROM `permissao`");
                        $permissaoLinha = $consultpermissao->fetch_assoc();
                        $permissaoRow = mysqli_num_rows($consultpermissao);
                        if($permissaoRow > 0){
                            do{             
                    ?>
                        <option value="<?=$permissaoLinha['permissoes']?>"><?=$permissaoLinha['permissoes']?></option>
                    <?php 
                            }while($permissaoLinha = $consultpermissao->fetch_assoc());
                        }                    
                    ?>  
                    </select>
                </div>

                <div class="d-grid gap-2">
                    <button class="btn btn-primary" type="submit" id="submit" style="color: black;">Cadastrar</button>
                </div>

                <div class="d-grid gap-2 mt-2">
                    <a href="dashboardUser.php" class="btn btn-secondary" role="button" aria-pressed="true" style="color: black;" id="btn_cancelar">Cancelar</a>
                </div>
                    
            </div>
        </div>

            <?php }?>
        <script src="../framework/jquery/jquery.min.js"></script>
        <script src="../framework/bootstrap/bootstrap.bundle.min.js"></script>
        <script src="../javascript/redirencionar.js"></script>
        <script src="../javascript/cadastra.js"></script>
    </body>
</html>