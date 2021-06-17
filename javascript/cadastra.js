document.getElementById('submit').addEventListener('click', function(e){
    e.preventDefault();
    $.ajax({
        method: "POST",
        url: "../php/cadastro.php",
        data: {
            nome: $('#inputNome').val(),
            data_nasc: $('#inputDate').val(),
            login: $('#inputUser').val(),
            senha: $('#inputPassword').val(),
            cargo: $('#selectCargo').val(),
        }
      }).done(function(mng) {
        if (mng == true){
            window.location.href = "../sistema/dashboardUser.php";
        }
      });
});