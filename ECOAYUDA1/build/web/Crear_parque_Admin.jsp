<%-- 
    Document   : Crear_parque_Admin
    Created on : 3/09/2021, 06:49:30 PM
    Author     : stive
--%>

<%@page import="ClasesEcoayuda.Listas.ListaSimpleParque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Creacion parque</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Crea un parque nuevo!</h1>
        </div>
        <br/>
        <div class ="container2">
            <div class="fromulario">
                <form  method="post">
                    <input class="form-control2"
                           type="text"
                           name="nombreparque"
                           placeholder="Nombre del parque"/>
                    <br/>
                    <br/>
                    <input class="form-control2"
                           type="text"
                           name="ubicacionparque"
                           placeholder="ubicacion parque"/>
                    <br/>
                    <br/>
                    <input class="form-control2"
                           type="text"
                           name="telefonoparque"
                           placeholder="telefono parque"/>
                    <br/>
                    <br/>
                    <input class="form-control2"
                           type="text"
                           name="horarioparque"
                           placeholder="horario parque"/>

                    <br/>
                    <br/>
                    <input   class="boton" type="submit" name="enviar" value="Enviar" />
                    <br/>
                    <br/>
                    <button class="boton">
                        <a href="Menu_especie_Admin.jsp"> Regresar</a>
                    </button>
                </form>

            </div>
            <div class="tabla">
                <% ListaSimpleParque lista3 = (ListaSimpleParque) session.getAttribute("ListaParque");
                    if (lista3 != null) {

                        String nombre = request.getParameter("nombreparque");
                        String ubicacion = request.getParameter("ubicacionparque");
                        String telefono = request.getParameter("telefonoparque");
                        String horario = request.getParameter("horarioparque");

                        if (nombre != null) {
                            lista3.insertarPrincipioNodo(nombre, ubicacion, telefono, horario);
                            lista3.mostrarNodos();
                            out.println("<table  border='4'>");
                            for (int i = 0; i < lista3.getSize(); i++) {
                                out.println("<tr><td>" + lista3.obtenerParque(i).nombre
                                        + "</td><td>" + lista3.obtenerParque(i).Ubicacion
                                        + "</td><td>" + lista3.obtenerParque(i).telefono
                                        + "</td><td>" + lista3.obtenerParque(i).horario + "</td></tr>");

                            }

                        } else {
                            lista3 = new ListaSimpleParque();
                            lista3.destruirLista();
                            session.setAttribute("ListaParque", lista3);

                        }
                    }
                %>
            </div>


        </div>


    </body>
</html>
