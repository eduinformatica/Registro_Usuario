<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:Login - Registrar Usuarios:.</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--CSS Only-->
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body id="contenedor">
        <main>
            <div class="pnlContenedor">
                <div class="pnlTop">
                    <h1 class="lblTitulo">Sign In.</h1>
                </div>

                <form action="Svl_Autentificacion" method="POST" class="frmLogin">
                <!--<form class="frmLogin">-->
                    <input type="text" name="txtUsuario" id="txtUsuario" class="lg-txtUsuario" placeholder="&#128100; Usuario" autocomplete="off" autofocus />
                    <input type="password" name="txtClave" id="txtClave" class="lg-txtClave" placeholder="&#x1f512; Contraseña" autocomplete="off" />

                    <button type="submit" class="btnIngresar" id="btnEnviar">Ingresar</button>
                </form>
            </div>
        </main>

        <!--Code JS-->
        <script src="vendor/jQuery/jquery-3.3.1.js"></script>
        <script src="assets/js/scripts.js"></script>
        
<!--        <script>
            $("#btnEnviar").submit(function () {
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
                    type: "POST"
                });
            });
        </script>-->
    </body>
</html>
