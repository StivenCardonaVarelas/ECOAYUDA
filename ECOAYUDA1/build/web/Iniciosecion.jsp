
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio sesion</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="Js/Js1.js"></script>
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">

    </head>

    <body>

        <div class="container">
            <h1 class="nombre">Inicio Sesion</h1>
            <form method="post" action="Usuarios" onsubmit="return validarIniciosesion()">
                <h2>Usuario</h2>
                <input
                    class="form-control"
                    type="text"
                    name="NombreUsuario"
                    placeholder="Nombre usuario"

                    />
                <br />
                <span id="nombreUsuario" class="errores">text</span>
                <br />
                <h2>Contraseña</h2>
                <input
                    class="form-control"
                    name="contrasena"
                    type="password"
                    placeholder="Contraseña"

                    />
                <br />
                <span id="contrasena" class="errores">text</span>
                 <span id="validar" class="errores">text</span>
                <br />
                <input   class="boton"type="submit" name="continuar" value="Continuar">
                <br />
                <input   type="hidden" name="pagina" value="Iniciosecion">
                <br />
                <br/>
                <a id="Recu-contra" href="Recuperar_contra.jsp">Olvidaste tu contraseña</a>
                <br />
                <br />
                <a id="crear-cuenta" href="Crear_cuenta.jsp">Crear cuenta</a>
                <br />
                <br />
                <button class="boton">
                    <a href="index.jsp">Regresar</a>
                </button>
            </form>
        </div> 
        <%

            String respuesta = (String) request.getAttribute("respuesta");

            if (respuesta != null) {
        %>

        <script>

            validarIniciosesion('<%=respuesta %>');
        </script>


        <% }
        %>
    </body>

</html>
