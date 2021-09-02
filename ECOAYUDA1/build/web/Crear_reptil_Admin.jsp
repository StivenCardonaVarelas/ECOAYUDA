<%-- 
    Document   : Crear_reptil_Admin
    Created on : 2/09/2021, 04:25:50 AM
    Author     : stive
--%>

<%@page import="ClasesEcoayuda.Listas.ListaSimpleReptil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Crear reptil</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Crea un reptil nuevo!</h1>
        </div>
        <br/>
        <div class ="container2">

            <div class="fromulario">
                <form  method="post">
                    <input class="form-control2"
                           type="text"
                           name="nombrereptil"
                           placeholder="Nombre del reptil"/>
                    <br/>
                    <br/>
                    <textarea class="form-control2" name="descripcion"   placeholder="Descripcion del reptil"></textarea>
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

                    <select class="form-control2" name="reproduccionreptil" placeholder="reproduccion">
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
                <% ListaSimpleReptil lista2 = (ListaSimpleReptil) session.getAttribute("Lista1");
                    if (lista2 != null) {
                        String nombreReptil = request.getParameter("nombrereptil");
                        String habitatReptil = request.getParameter("tipohabitat");
                        String alimentacionReptil = request.getParameter("tipoalimento");
                        String tipoReptil = request.getParameter("tipoespecie");
                        String reproduccionReptil = request.getParameter("reproduccionreptil");
                        String numExtremidades = request.getParameter("numeroextremidades");
                        String tipoExtremidadesReptil = request.getParameter("tipoextremidades");
                        if (nombreReptil != null) {
                            out.println("<table  border='4'>");
                            lista2.insertarPrincipioNodo(nombreReptil, habitatReptil, alimentacionReptil, tipoReptil, reproduccionReptil, numExtremidades, tipoExtremidadesReptil);
                            lista2.mostrarNodos();
                            for (int i = 0; i < lista2.getSize(); i++) {
                                out.println("<tr><td>" + lista2.obtenerReptil(i).nombreEspecie + "</td><td>" + lista2.obtenerReptil(i).habitat + "</td><td>" + lista2.obtenerReptil(i).alimentacion + "</td><td>" + lista2.obtenerReptil(i).tipoReptil + "</td><td>" + lista2.obtenerReptil(i).reproduccion + "</td><td>" + lista2.obtenerReptil(i).numExtremidades + "</td><td>" + lista2.obtenerReptil(i).tipoExtremidadesReptil + "</td></tr>");

                            }
                        }
                    } else {

                        lista2 = new ListaSimpleReptil();
                        lista2.destruirLista();
                        session.setAttribute("Lista1", lista2);

                    }


                %>
            </div>
        </div>
    </body>
</html>
