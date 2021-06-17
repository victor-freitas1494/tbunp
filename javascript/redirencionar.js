var link = document.getElementById('btn-novo');

link.addEventListener('click',function(){
    window.location.href = "../sistema/newuser.php";
});

var cancelar = document.getElementById('btn_cancelar');

cancelar.addEventListener('click',function(){
    window.location.href = "../sistema/dashboardUser.php";
});