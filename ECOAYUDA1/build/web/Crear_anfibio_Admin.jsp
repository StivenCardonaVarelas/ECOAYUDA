<%-- 
    Document   : Crear_anfibio_Admin
    Created on : 3/09/2021, 03:58:31 PM
    Author     : stive
--%>

<%@page import="Colas.ColaAnfibio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Crear anfibio</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Crea un anfibio nuevo!</h1>
        </div>
        <br/>
        <div class ="container2">

            <div class="fromulario">
                <form  method="post">
                    <input class="form-control2"
                           type="text"
                           name="nombreanfibio"
                           placeholder="Nombre del anfibio"/>
                    <br/>
                    <br/>
                    <textarea class="form-control2" name="descripcion"   placeholder="Descripcion del anfibio"></textarea>
                    <br/>
                    <br/>
                    <input class="form-control2"
                           type="text"
                           name="tipoespecie"
                           placeholder="Tipo especie"/>
                    <br/>
                    <br/>
                    <input class="form-control2"
                           type="text"
                           name="tipohabitat"
                           placeholder="Tipo habitat"/>
                    <br/>
                    <br/>

                    <select class="form-control2" name="tipoalimento" placeholder="tipo de alimento">
                        <option>tipo de alimento</option>
                        <option>Carnivoro</option>
                        <option>Hervivoro</option>
                        <option>Carroñero</option>
                        <option>Omnívoro</option>
                        <option>Piscívoro</option>
                        <option>Nectarivoro</option>
                        <option>Saprofago</option>

                    </select>
                    <br/>
                    <br/>

                    <select class="form-control2" name="reproduccionanfibio" placeholder="reproduccion">
                        <option>tipo de reproducción</option>
                        <option>Asexual:</option>
                        <option>Fisión binaria</option>
                        <option>Fragmentación</option>
                        <option>Partenogénesis</option>
                        <option>Sexual:</option>
                        <option>Fertilización interna</option>
                        <option>Fertilización externa</option>
                        <option>Autogamia</option>
                        <option>Isogámica</option>
                        <option>Viviparidad</option>
                        <option>Oviparidad</option>      
                    </select>
                    <br/>
                    <br/>
                    <select class="form-control2" name="numeroextremidades" placeholder="Numero extrmidades">
                        <option>numero extrmidades</option>
                        <option>2</option>
                        <option>4</option>
                        <option>6</option>
                        <option>8</option>
                        <option>100</option>
                    </select>
                    <br/>
                    <br/>
                    <select class="form-control2" name="tipoextremidades" placeholder="tipo de extremidades">
                        <option>tipo de extremidades</option>
                        <option>Patas</option>
                        <option>Patas y alas</option>
                        <option>Aletas</option>
                    </select>
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

                <% ColaAnfibio cola = (ColaAnfibio) session.getAttribute("Cola");
                    if (cola != null) {
                        String nombreAnfibio = request.getParameter("nombreanfibio");
                        String habitatAnfibio = request.getParameter("tipohabitat");
                        String alimentacionAnfibio = request.getParameter("tipoalimento");
                        String reproduccionAnfibio = request.getParameter("reproduccionanfibio");
                        String tipoAnfibio = request.getParameter("tipoespecie");
                        String numExtremidadesAnfibio = request.getParameter("numeroextremidades");
                        String tipoExtremidadesAnfibio = request.getParameter("tipoextremidades");
                        if (nombreAnfibio != null) {
                            cola.encolar(nombreAnfibio, habitatAnfibio, alimentacionAnfibio, reproduccionAnfibio, tipoAnfibio, numExtremidadesAnfibio, tipoExtremidadesAnfibio);
                            cola.mostrarNodos();
                            out.println("<table  border='4'>");
                            for (int i = 0; i < cola.getSize(); i++) {
                                out.println("<tr><td>" + cola.obtenerAnfibio(i).nombreEspecie + "</td><td>" + cola.obtenerAnfibio(i).habitat + "</td><td>" + cola.obtenerAnfibio(i).alimentacion + "</td><td>" + cola.obtenerAnfibio(i).tipoEspecie + "</td><td>" + cola.obtenerAnfibio(i).reproduccion + "</td><td>" + cola.obtenerAnfibio(i).numExtremidades + "</td><td>" + cola.obtenerAnfibio(i).tipoExtremidades + " </td></tr>");

                            }
                        }
                    } else {

                        cola = new ColaAnfibio();
                        cola.deseconlar();
                        session.setAttribute("Cola", cola);

                    }

                %>
            </div>
        </div>
    </body>
</html>
