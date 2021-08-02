<%-- 
    Document   : Reptiles2
    Created on : 5/06/2021, 02:16:18 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Reptiles</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Selecciona el tipo de reptil</h1>
            <br/>
            <div class="cards">
                <div class="card">
                    <img src="imagenes/reptil4.png" alt="Tortuga de orejas rojas" style="width:85%">
                    <h2>Tortuga de orejas rojas</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/reptil5.png" alt="Piton" style="width:80%">
                    <h2>Piton</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/reptil6.png" alt="Gecko leopardo" style="width:110%">
                    <h2>Gecko leopardo</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/reptil7.png" alt="Camaleones" style="width:70%">
                    <h2>Camaleon</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
            </div>
            <br/>
            <br/>
            <br/>
            <button>
                    <a href="Reptiles.jsp"> Regresar</a>
            </button>
            <br/>
            <br/>
            <button>
                <a href="Menu_especies.jsp"> Salir</a>
            </button>
        </div>
    </body>
</html>

