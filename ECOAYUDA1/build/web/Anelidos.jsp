<%-- 
    Document   : Anelidos
    Created on : 15/06/2021, 02:39:13 PM
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
                    <img src="imagenes/ave.jpg" alt="Tángara multicolor​" style="width:60%">
                    <h2>Tángara multicolor​</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div  class="card">
                    <img src="imagenes/ave1.jpg" alt="Compás" style="width:60%">
                    <h2>Compás</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div  class="card">
                    <img src="imagenes/ave2.jpg" alt="Colibrí chivito del Ruiz" style="width:65%">
                    <h2>Colibrí chivito del Ruiz</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div  class="card">
                    <img src="imagenes/ave3.jpg" alt="Barranquero Andino" style="width:65%">
                    <h2>Barranquero Andino</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
            </div>
            <br/>
            <br/>
            <br/>
            <button>
                <a href="Aves2.jsp">Siguiente</a>
            </button>
            <br/>
            <br/>
            <button>
                <a href="Menu_especies.jsp"> Regresar</a>
            </button>
        </div>
    </body>
</html>

