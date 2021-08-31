<%-- 
    Document   : Usuarios
    Created on : 3/08/2021, 04:17:24 PM
    Author     : stive
--%>

<%@page import="Usuarios.Listas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Usuarios.Usuario"%>
<%@page import ="Servidores.UsuarioAdmin;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Listados de usuarios!</h1>
            <span class="cabecera">Nombre</span>
            <span class="cabecera">Apellido</span>
            <span class="cabecera"> Nombre de usuario</span>
            <span class="cabecera"> Email</span>
            <span class="cabecera"> Contraseña</span>
            <span class="cabecera"> Perfil</span>





            <%
                ArrayList<Usuario> usuario = (ArrayList<Usuario>) request.getAttribute("usuario");
                if (!usuario.isEmpty()) {
                    for (Usuario c : usuario) {


            %>


            <span class="filas"><<%=c.getNombre()%>/span>
            <span class="filas"><<%=c.getApellido()%>/span>
            <span class="filas"><<%=c.getnombreUsuario()%>/span>
            <span class="filas"><<%=c.getEmail()%>/span>
            <span class="filas"><<%=c.getContrasena()%>/span>
            <span class="filas"><<%=c.getPerfil()%>/span>





            <%
                }
            } else {%>
            <p><%="vacio"%></p>



            <%
                }
            %>
              <% Listas lista = (Listas) session.getAttribute("listas");
            
                String nombreUsuario = request.getParameter("nombreUsuario");
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String contrasena = request.getParameter("contrasena");
                String correo = request.getParameter("correo");
                String perfil = request.getParameter("perfil");
        
                    lista.insertarPrincipioNodo(nombreUsuario, nombre, apellido, contrasena, correo, perfil);
                    lista.mostrar();
                    out.println("<table border='4'>");
                    for (int i = 0; i < lista.getSize(); i++) {
                        out.println("<tr><td>" + lista.getUsuario(i).nombreUsuario + "</td><td>" + lista.getUsuario(i).nombre + "</td><td>" + lista.getUsuario(i).apellido + "</td><td>" + lista.getUsuario(i).contrasena + "</td><td>" + lista.getUsuario(i).correo + "</td><td>" + lista.getUsuario(i).perfil + "</td></tr>");

                    }
                
        %>
           

            <button>
                <a href="Menu_admi.jsp"> Regresar</a>
            </button>
        </div>

    </body>
</html>
