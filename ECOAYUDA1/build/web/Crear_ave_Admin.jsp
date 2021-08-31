<%-- 
    Document   : Crear_ave_Admin
    Created on : 30/08/2021, 03:30:56 PM
    Author     : stive
--%>

<%@page import="ClasesEcoayuda.Listas.ListaSimpleAve"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Creacion de aves</title>
    </head>
    <body>
        <div class="container">
                <h1 class="nombre">Crea un ave nueva!</h1>
            </div>
        <br/>
        <div class ="container2">
            
            <div class="fromulario">
                <form  method="post">
                    <input class="form-control2"
                           type="text"
                           name="nombreave"
                           placeholder="Nombre del ave"/>
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

                    <select class="form-control2" name="reproduccionave" placeholder="reproduccion">
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
                </form>
            </div>
            <div class="tabla">
                <%   ListaSimpleAve lista = (ListaSimpleAve) session.getAttribute("Lista");

                    if (lista != null) {
                        String nombreAve = request.getParameter("nombreave");
                        String habitatAve = request.getParameter("tipohabitat");
                        String tipoAve = request.getParameter("tipoespecie");
                        String alimentacionAve = request.getParameter("tipoalimento");
                        String reproduccionAve = request.getParameter("reproduccionave");
                        String numExtremidades = request.getParameter("numeroextremidades");
                        String tipoExtremidades = request.getParameter("tipoextremidades");
                        if (nombreAve != null) {
                            lista.insertarPrincipioNodo(nombreAve, habitatAve, tipoAve, alimentacionAve, reproduccionAve, numExtremidades, tipoExtremidades);
                            lista.mostrarNodos();
                            out.println("<table  border='4'>");
                            for (int i = 0; i < lista.getSize(); i++) {
                                out.println("<tr><td>" + lista.obtenerAve(i).nombreEspecie + "</td><td>" + lista.obtenerAve(i).habitat + "</td><td>" + lista.obtenerAve(i).tipoAve + "</td><td>" + lista.obtenerAve(i).alimentacion + "</td><td>" + lista.obtenerAve(i).reproduccion + "</td><td>" + lista.obtenerAve(i).numExtremidades + "</td><td>" + lista.obtenerAve(i).tipoExtremidades + "</td></tr>");

                            }
                        }
                    } else {
                        lista = new ListaSimpleAve();
                        lista.destruirLista();
                        session.setAttribute("Lista", lista);

                    }
                %>
            </div>

        </div>

    </body>
</html>
