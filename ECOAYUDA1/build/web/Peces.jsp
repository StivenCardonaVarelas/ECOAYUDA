<%-- 
    Document   : Peces
    Created on : 5/06/2021, 01:08:58 PM
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
                    <img  src="imagenes/pez.png" alt="Pez payaso" style="width:60%">
                    <h2>Pez payaso</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/pez1.png" alt="Pez cirujano" style="width:80%">
                    <h2>Pez cirujano</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/pez2.png" alt="Piraña" style="width:90%">
                    <h2>Piraña</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/pez3.png" alt="Sardina" style="width:95%">
                    <h2>Sardina</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
            </div>
             <br/>
            <br/>
            <br/>
            <button>
                <a href="Peces2.jsp">Siguiente</a>
            </button>
            <br/>
            <br/>
            <button>
                <a href="Menu_especies.jsp"> Regresar</a>
            </button>

        </div>
    </body>
</html>
