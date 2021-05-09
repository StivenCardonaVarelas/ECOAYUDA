<%-- 
    Document   : Menu_usuario
    Created on : 4/05/2021, 04:47:45 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
    </head>
    <body>
        <div  class="container">
            <h1 class="nombre">¿Qué deseas consultar?</h1>
            <br/>
            <div class="cards">
                <div  class="card">
                    <img src="imagenes/huella.svg" alt="huella" style="width:80%">
                    <h2>Especies</h2>
                    <p><button> <a href="">Ingresar</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/bosque.svg" alt="parque" style="width:80%">
                    <h2>Parques</h2>
                    <p><button> <a href="Parques.jsp">Ingresar</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/clinica.svg" alt="clinica" style="width:80%">
                    <h2>Clinicas</h2>
                    <p><button> <a href="Menuclinicas.jsp">Ingresar</a></button></p>
                </div>

            </div>
            <br/>
            <br/>
            <button>
                <a href="Perfiles_usuarios.jsp"> Regresar</a>
            </button>
        </div>
    </body>
</html>
