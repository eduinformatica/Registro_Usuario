//CODE AUTENTIFICACION
$("#btnEnviar").click(function () {
    let usuario = $('#txtUsuario').val();
    let password = $('#txtClave').val();

    if (usuario.length <= 0) {
        alert("Debe ingersra un usuario");
        return false;
    } 
    
    if (password.length <= 0) {
        alert("Debe ingresar una clave");
        return false;
    }
    
    $.ajax({
        url: "Svl_Autentificacion",
        type: "POST",
        dataType: "JSON"
    });
});
