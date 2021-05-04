<%-- 
    Document   : Iniciosecion
    Created on : 2/05/2021, 02:32:32 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio sesion</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
    </head>
    <body>

        <div class="container">
            <h1>Usuario</h1>
            <input
                class="form-control"
                type="text"
                placeholder="Nombre usuario"

                />
            <br />
            <br />
            <h1>Contraseña</h1>
            <input
                class="form-control"
                type="password"
                placeholder="Contraseña"

                />
            <br />
            <br />
            <button>
                <a href="Perfiles_usuarios.jsp">Ingresar</a>
            </button>
            <br />
            <br/>
            <a href="Recuperar_contra.jsp">Olvidaste tu contraseña</a>
            <br />
            <br />
            <a href="Crear_cuenta.jsp">Crear cuenta</a>
            <br />
            <br />
            <button>
                <a href="index.jsp">Regresar</a>
            </button>
        </div>
    </body>
</html>
