document.getElementById('submit').addEventListener('click', function(e){
    e.preventDefault();
    $.ajax({
        method: "POST",
        url: "../php/cadastroEvent.php",
        data: {
            nome_evento: $('#inputEvent').val(),
            data_evt: $('#inputDate').val(),
            fk_usuario:  $('#selectUsuario').val()
        }
      }).done(function(mng) {
        if (mng == true){
            window.location.href = "../sistema/evento.php";
        }
      });
});