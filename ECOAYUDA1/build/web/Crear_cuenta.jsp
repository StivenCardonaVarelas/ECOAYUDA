<%-- 
    Document   : Crear_cuenta
    Created on : 2/05/2021, 02:37:26 PM
    Author     : stive
--%>
<%@page import="Usuarios.Listas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear cuenta</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="Js/Js1.js"></script>
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Registrarse</h1>
            <form method="post" action="Usuarios" onsubmit="return validar()">
                <h2>Nombre:</h2>
                <input
                    class="form-control"
                    type="text"
                    name="nombre"
                    placeholder="Nombre"/>
                <span  id="nombre" class="errores">text</span>
                <br />
                <h2>Apellido:</h2>
                <input
                    class="form-control"
                    type="text"
                    name="apellido"
                    placeholder="Apellido"/>
                    <span id="apellido" class="errores">text</span>
                <br />
                <h2>Correo electronico:</h2>
                <input
                    class="form-control"
                    name="correo"
                    type="email"
                    placeholder="correo electronico" />
                    <span id="email" class="errores">text</span>
                <br/>
                <h2>Nombre de usuario:</h2>
                <input
                    class="form-control"
                    type="text"
                    name="nombreUsuario"
                    placeholder="Nombre usuario"/>
                    <span id="nombreUsuario" class="errores">text</span>
                <br />
                <h2>Contraseña:</h2>
                <input
                    class="form-control"
                    type="password"
                    name="contrasena"
                    placeholder="Contraseña"/>
                    <span id="contrasena" class="errores">text</span>
                <br/>
                <h2> Elije el perfil</h2>
                <select name="perfil" placeholder="Perfil usuario">
                    <option>Usuario</option>
                    <option>Administrador</option>
                </select>
                <br/>
                <input   class="boton"type="submit" name="continuar" value="Continuar">
                <br />
                <input   type="hidden" name="pagina" value="Crear_cuenta">
            </form>
            <button class="boton" >
                <a href="Iniciosecion.jsp"> Regresar</a>
            </button>
        </div>    
        <% Listas lista = (Listas) session.getAttribute("listas");
            if (lista != null) {
                String nombreUsuario = request.getParameter("nombreUsuario");
                String nombre = request.getParameter("nombre");
                String apellido=request.getParameter("apellido");
                String contrasena=request.getParameter("contrasena");
                String correo=request.getParameter("correo");
                String perfil=request.getParameter("perfil");
                if (nombreUsuario != null) {
                    lista.insertarPrincipioNodo(nombreUsuario, nombre,apellido,contrasena,correo,perfil);
                    lista.mostrar();
                    out.println("<table border='4'>");
                    for (int i = 0; i < lista.getSize(); i++) {
                        out.println("<tr><td>" + lista.getUsuario(i).nombreUsuario + "</td><td>" + lista.getUsuario(i).nombre + "</td><td>" + lista.getUsuario(i).apellido + "</td><td>" + lista.getUsuario(i).contrasena + "</td><td>" + lista.getUsuario(i).correo + "</td><td>" + lista.getUsuario(i).perfil + "</td></tr>");
                        
                    }
                }
            } else {
                lista = new Listas();
                lista.destruir();
                session.setAttribute("listas", lista);

            }
        %>
    </body>

</html>
