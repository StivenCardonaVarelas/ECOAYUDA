<%-- 
    Document   : Crear_pez_Admin
    Created on : 31/08/2021, 06:01:07 PM
    Author     : stive
--%>

<%@page import="ClasesEcoayuda.Listas.ListaSimplePez"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Creacion de pez</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Crea un pez nuevo!</h1>
        </div>
        <br/>
        <div class ="container2">

            <div class="fromulario">
                <form  method="post">
                    <input class="form-control2"
                           type="text"
                           name="nombrepez"
                           placeholder="Nombre del pez"/>
                    <br/>
                    <br/>
                    <textarea class="form-control2" name="descripcion"   placeholder="Descripcion del pez"></textarea>
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

                    <select class="form-control2" name="reproduccionpez" placeholder="reproduccion">
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
                <% ListaSimplePez lista1 = (ListaSimplePez) session.getAttribute("Lista");

                    if (lista1 != null) {
                        String nombrePez = request.getParameter("nombrepez");
                        String habitatPez = request.getParameter("tipohabitat");
                        String alimentacionPez = request.getParameter("tipoalimento");
                        String reproduccionPez = request.getParameter("reproduccionpez");
                        String tipoPez = request.getParameter("tipoespecie");
                        String numExtremidadesPez = request.getParameter("numeroextremidades");
                        String tipoExtremidadesPez = request.getParameter("tipoextremidades");

                        if (nombrePez != null) {
                            out.println("<table  border='4'>");
                            lista1.insertarPrincipioNodo(nombrePez, habitatPez, alimentacionPez, reproduccionPez, tipoPez, numExtremidadesPez, tipoExtremidadesPez);
                            lista1.mostrarNodos();
                            for (int i = 0; i < lista1.getSize(); i++) {

                                out.println("<tr><td>" + lista1.obtenerPez(i).nombreEspecie + "</td><td>" + lista1.obtenerPez(i).habitat + "</td><td>" + lista1.obtenerPez(i).alimentacion + "</td><td>" + lista1.obtenerPez(i).reproduccion + "</td><td>" + lista1.obtenerPez(i).tipoPez + "</td><td>" + lista1.obtenerPez(i).numExtremidades + "</td><td>" + lista1.obtenerPez(i).tipoExtremidades + "</td></tr>");

                            }
                        }
                    } else {
                        lista1 = new ListaSimplePez();
                        lista1.destruirLista();
                        session.setAttribute("Lista", lista1);

                    }

                %>
            </div>
        </div>

    </body>
</html>
