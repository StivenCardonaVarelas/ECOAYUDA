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
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Registrarse</h1>
            <form>
                <h2>Nombre:</h2>
                <input
                    class="form-control"
                    type="text"
                    name="nombre"
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
                    name="nombreUsuario"
                    placeholder="Nombre usuario"/>
                <br />
                <h2>Contraseña:</h2>
                <input
                    class="form-control"
                    type="password"
                    placeholder="Contraseña"/>
                <br/>
                <h2> Elije el perfil</h2>
                <select>
                    <option>Administrador</option>
                    <option>Usuario</option>
                </select>
                <br/>
                <button type="submit">
                    <a >Continuar</a>
                </button>
                <br />
                <button>
                    <a href="Iniciosecion.jsp">Regresar</a>
                </button>
            </form>
        </div>    
        <% Listas lista = (Listas) session.getAttribute("listas");
            if (lista != null) {
                String nombreUsuario = request.getParameter("nombreUsuario");
                String nombre = request.getParameter("nombre");
                if (nombreUsuario != null) {
                    lista.insertarPrincipioNodo(nombreUsuario, nombre);
                    lista.mostrar();
                    out.println("<table border='4'>");
                    for (int i = 0; i < lista.getSize(); i++) {
                        out.println("<tr><td>" + lista.getUsuario(i).nombreUsuario + "</td><td>" + lista.getUsuario(i).nombre + "</td></tr>");
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
