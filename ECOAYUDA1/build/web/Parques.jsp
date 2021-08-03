<%-- 
    Document   : Parques
    Created on : 7/05/2021, 02:37:53 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <!---font awesome------------->
        <title>Parques</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Elije el parque a conocer</h1>
            <br/>
            <div class="cards">
                <div  class="card">
                    <img src="imagenes/Jardín-Botánico-1.jpg" alt="Jadin Botanico" style="width:100px">
                    <h2>Jardin botanico</h2>
                    <p><button> <a href="Parque1.jsp">Ingresar</a></button></p>
                </div>
                <div  class="card">
                    <img src="imagenes/logo-parque-de-la-conservacion.png" alt="logo  parque de la conservacion" style="width:135px">
                    <br/>
                    <h2>Parque de la Conservación</h2>
                    <p><button> <a href="Parque2.jsp">Ingresar</a></button></p>
                </div>
                <div  class="card">
                    <img src="imagenes/parque3.png" alt="logo parque explora" style="width:135px">
                    <br/>
                    <h2>Parque explora</h2>
                    <p><button> <a href="Parque3.jsp">Ingresar</a></button></p>
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
