document.getElementById('submit').addEventListener('click', function(e){
    e.preventDefault();
    $.ajax({
        method: "POST",
        url: "../php/updatedb.php",
        data: {
            id_usuario: $('#id_usuario').val(),
            nome: $('#inputNome').val(),
            login: $('#inputUser').val(),
            senha: $('#inputPassword').val(),
            cargo: $('#selectCargo').val()
        }
      }).done(function(mng) {
        if (mng == true){
            window.location.href = "../sistema/dashboardUser.php";
        }
      });
});