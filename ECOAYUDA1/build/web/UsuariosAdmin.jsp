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
        <%@include file="Conexion.jsp"%>
        <title>Usuarios</title>
    </head>
    <body>
        <div class="container">

            <h1 class="nombre">Listados de usuarios!</h1>
            <table class="tabla">
                <tr>
                    <td>Nombre</td>
                    <td>Apellido</td>
                    <td>Correo </td>
                    <td>Contraseña</td>
                    <td>Nombre de usuario</td>
                    <td>Perfil </td>

                </tr>

                <%                String qry = "select * from usuario";
                    ResultSet data = sql.executeQuery(qry);
                    while (data.next()) {
                %>

                <tr>


                    <td> 
                        <% out.print(data.getString(2));%>
                    </td>
                    <td>
                        <% out.print(data.getString(3));%>
                    </td>
                    <td>
                        <% out.print(data.getString(4));%>
                    </td>
                    <td> 
                        <% out.print(data.getString(5));%>
                    </td>
                    <td> 
                        <% out.print(data.getString(6));%>
                    </td>
                    <td> 
                        <% if ((data.getInt(7)) == 1) {
                                    out.print("Administrador");

                                } else {
                                    out.print("Usuario");

                                }

                            }%>
                    </td>


                </tr>
            </table>








            <br>
            <br>
            <button>
                <a href="Menu_admi.jsp"> Regresar</a>
            </button>
        </div>

    </body>
</html>
