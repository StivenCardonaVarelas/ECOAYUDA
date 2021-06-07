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
                    <img src="imagenes/pez4.jpg" alt="Apteronotus galvisi" style="width:100%">
                    <h2>Apteronotus galvisi</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/pez5.jpg" alt="Astyanax fasciatus" style="width:100%">
                    <h2>Astyanax fasciatus</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/pez6.jpg" alt="Astyanax magdalenae" style="width:100%">
                    <h2>Astyanax magdalenae</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/pez7.jpg" alt="Carlastyanax aurocaudatus" style="width:70%">
                    <h2>Carlastyanax aurocaudatus</h2>
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
