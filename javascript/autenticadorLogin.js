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
            window.location.href = "../sistema/dashboard.php";
        }else if (mng == false){
            alert('Login ou senha inválidos. Tente novamente!');
        }
      });
})