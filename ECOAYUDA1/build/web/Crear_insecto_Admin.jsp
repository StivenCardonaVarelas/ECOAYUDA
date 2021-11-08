<%-- 
    Document   : Crear_insecto_Admin
    Created on : 3/09/2021, 05:55:22 PM
    Author     : stive
--%>

<%@page import="ClasesEcoayuda.Listas.ListaSimpleInsecto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Creacion insecto</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Crea un insecto nuevo!</h1>
        </div>
        <br/>
        <div class ="container2">

            <div class="fromulario">
                <form  method="post">
                    <input class="form-control2"
                           type="text"
                           name="nombreinsecto"
                           placeholder="Nombre del insecto"/>
                    <br/>
                    <br/>
                    <textarea class="form-control2" name="descripcion"   placeholder="Descripcion del ave"></textarea>
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

                    <select class="form-control2" name="reproduccioninsecto" placeholder="reproduccion">
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
                <%ListaSimpleInsecto lista2 = (ListaSimpleInsecto) session.getAttribute("ListaInsecto");
                
                if (lista2 != null) {
                        String nombreInsecto = request.getParameter("nombreinsecto");
                        String habitatInsecto = request.getParameter("tipohabitat");
                        String tipoInsecto = request.getParameter("tipoespecie");
                        String alimentacionInsecto = request.getParameter("tipoalimento");
                        String reproduccionInsecto= request.getParameter("reproduccioninsecto");
                        String numExtremidadesInsecto = request.getParameter("numeroextremidades");
                        String tipoExtremidadesInsecto = request.getParameter("tipoextremidades");
                        if (nombreInsecto != null) {
                            lista2.insertarPrincipioNodo(nombreInsecto, habitatInsecto, tipoInsecto, alimentacionInsecto, reproduccionInsecto, numExtremidadesInsecto, tipoExtremidadesInsecto);
                            lista2.mostrarNodos();
                            out.println("<table  border='4'>");
                            for (int i = 0; i < lista2.getSize(); i++) {
                                out.println("<tr><td>" + lista2.obtenerInsecto(i).nombreEspecie + "</td><td>" + lista2.obtenerInsecto(i).habitat + "</td><td>" + lista2.obtenerInsecto(i).tipoInsecto+ "</td><td>" + lista2.obtenerInsecto(i).alimentacion + "</td><td>" + lista2.obtenerInsecto(i).reproduccion + "</td><td>" + lista2.obtenerInsecto(i).numExtremidades + "</td><td>" + lista2.obtenerInsecto(i).tipoExtremidades +"</td></tr>");
                                    
                                
                            }
                        }
                    } else {
                        lista2 = new ListaSimpleInsecto();
                        lista2.destruirLista();
                        session.setAttribute("ListaInsecto", lista2);

                    }
                
                
                %>

            </div>
        </div>
    </body>
</html>
