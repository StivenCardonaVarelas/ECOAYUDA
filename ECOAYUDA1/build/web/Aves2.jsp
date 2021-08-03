<%-- 
    Document   : Aves2
    Created on : 3/06/2021, 01:41:06 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Aves</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Selecciona el tipo de ave</h1>
            <br/>
            <div class="cards" class="boxEspecies">
                <div  class="card">
                    <img src="imagenes/ave4.jpg" alt="Tucancillo collarejo" style="width:60%">
                    <h2>Tucancillo collarejo</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div  class="card">
                    <img src="imagenes/ave5.jpg" alt="Carpintero bellotero" style="width:75%">
                    <h2>Carpintero bellotero</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div  class="card">
                    <img src="imagenes/ave6.jpg" alt="Gallito de las rocas peruano" style="width:75%">
                    <h2>Gallito de las rocas peruano</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div  class="card">
                    <img src="imagenes/ave7.jpg" alt="Torito cabecirrojo" style="width:75%">
                    <h2>Torito cabecirrojo</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>

            </div>
            <br/>
            <button>
                <a href="Aves.jsp"> Regresar</a>
            </button>
            <br/>
            <br/>
            <button>
                <a href="Menu_especies.jsp"> Salir</a>
            </button>
        </div>
    </body>
</html>
