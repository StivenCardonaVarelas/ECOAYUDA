<%-- 
    Document   : Crear_cuenta
    Created on : 2/05/2021, 02:37:26 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear cuenta</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Registrarse</h1>
            <h2>Nombre:</h2>
            <input
                class="form-control"
                type="text"
                placeholder="Nombre"/>
            <br />
            <h2>Apellido:</h2>
            <input
                class="form-control"
                type="text"
                placeholder="Apellido"/>
            <br />
            <h2>Correo electronico:</h2>
            <input
                class="form-control"
                type="email"
                placeholder="correo electronico" />
            <br/>
            <h2>Nombre de usuario:</h2>
            <input
                class="form-control"
                type="text"
                placeholder="Nombre usuario"/>
            <br />
            <h2>Contraseña:</h2>
            <input
                class="form-control"
                type="password"
                placeholder="Contraseña"/>
            <br/>
            <br/>
            <h2> Elije el perfil</h2>
            <input type="checkbox" id="cbox1" value="admi_checkbox">Administrador</label><br/>
             <input type="checkbox" id="cbox2" value="usua_checkbox"> <label for="cbox2">Usuario</label><br/>
                <br />
            <br/>
            <button>
                <a href="Iniciosecion.jsp">Continuar</a>
            </button>
            <br />
            <br />
            <button>
                <a href="Iniciosecion.jsp">Regresar</a>
            </button>
        </div>
</html>
