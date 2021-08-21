<%-- 
    Document   : Usuarios
    Created on : 3/08/2021, 04:17:24 PM
    Author     : stive
--%>


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
            <span class="cabecera">Codigo</span>
            <span class="cabecera">Nombre</span>
            <span class="cabecera">Apellido</span>
            <span class="cabecera"> Nombre de usuario</span>
            <span class="cabecera"> Email</span>
            <span class="cabecera"> Contraseña</span>
            <span class="cabecera"> Perfil</span>
            
             <form method="post" action="UsuariosAdmin">
             <button>
                <a href="Menu_admi.jsp"> Regresar</a>
            </button>
        </form>
        </div>
        <%
            ArrayList<Usuario> usuario = (ArrayList<Usuario>) request.getAttribute("usuarios");
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
        
       
    </body>
</html>
