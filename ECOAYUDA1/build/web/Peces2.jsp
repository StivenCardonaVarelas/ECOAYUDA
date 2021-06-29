<%-- 
    Document   : peces2
    Created on : 5/06/2021, 01:29:28 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Peces</title>
    </head>
    <body>
        <div class="container">
             <h1 class="nombre">Selecciona el tipo de pez</h1>
            <br/>
            <div class="cards">
                <div class="card">
                    <img src="imagenes/pez4.gif" alt="Pez angel" style="width:145%">
                    <h2>Pez angel</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/pez5.webp" alt="Piraña negra" style="width:100%">
                    <h2>Piraña negra</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/pez6.webp" alt="Pez molly" style="width:100%">
                    <h2>Pez molly</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/pez7.png" alt="Raya motro" style="width:100%">
                    <br/>
                    <br/>
                    <br/>
                    <h2>Raya motoro</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
            </div>
             <br/>
            <br/>
            <br/>
            <button>
                <a href="Peces.jsp">Regresar</a>
            </button>
            <br/>
            <br/>
            <button>
                <a href="Menu_especies.jsp"> Salir</a>
            </button>
        </div>
    </body>
</html>
