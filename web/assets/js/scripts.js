//CODE AUTENTIFICACION
$("#btnEnviar").click(function () {
    let usuario = $('#txtUsuario').val().trim();
    let clave = $('#txtClave').val().trim();
    let parametros = new Array();

    if (usuario.length <= 0) {
        alert("Debe ingersra un usuario");
        return false;
    }

    if (clave.length <= 0) {
        alert("Debe ingresar una clave");
        return false;
    }

    parametros.push(usuario, clave);
    $.ajax({
        url: "Svl_Usuario",
        type: "POST",
        dataType: "json",
        data: {
            accion: "Authenticar",
            informacion: JSON.stringify(parametros)
        },
        success: function (data) {
            if (data.estado == 200) {
                console.info(data.datos);
            } else {
                console.error("E: Contactar con informatica");
            }
        }
    });
});
