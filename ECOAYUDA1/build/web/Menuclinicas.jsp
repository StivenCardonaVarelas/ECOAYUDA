<%-- 
    Document   : Munuclinicas
    Created on : 9/05/2021, 04:34:49 PM
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
        <title>Clinicas</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Elije la Veterinaria a conocer</h1>
            <br/>
            <div class="cards"> 
                <div  class="card">
                    <img src="imagenes/clinica1.jpg" alt="" style="width:100%">
                    <h2>Sociedad protectora de animales</h2>
                    <p><button> <a href="Clinica1.jsp">Ingresar</a></button></p>
                </div>
                <br/>
                <div  class="card">
                    <img src="imagenes/clinica2.jpg" alt="" style="width:100%">
                    <h2>Metropolitana</h2>
                    <p><button> <a href="Clinica2.jsp">Ingresar</a></button></p>
                </div>
                <br/>
                <div  class="card">
                    <img src="imagenes/clinica3.webp" alt="" style="width:100%">
                    <h2>Veterinaria Aquavet</h2>
                    <p><button> <a href="Clinica3.jsp">Ingresar</a></button></p>
                </div>
            </div>
            <br/>
            <br/>
            <br/>
            <button>
                <a href="Menu_usuario.jsp"> Regresar</a>
            </button>

        </div>
    </body>
</html>
