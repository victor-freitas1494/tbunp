document.getElementById('submit').addEventListener('click', function(e){
    e.preventDefault();
    $.ajax({
        method: "POST",
        url: "../php/Authentication.php",
        data: {
            login: $('#inputUser').val(),
            password: $('#inputPassword').val()
        }
      }).done(function(mng) {
        if (mng == true){
            window.location.href = "../sistema/dashboard.html";
        }else if (mng == false){
            alert('erro de login ou senha');
        }
      });
})