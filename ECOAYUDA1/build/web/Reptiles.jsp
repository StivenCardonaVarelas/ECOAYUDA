<%-- 
    Document   : Reptil
    Created on : 5/06/2021, 01:44:52 PM
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
                    <img src="imagenes/reptil.png" alt="Tortuga matamata" style="width:100%">
                    <h2>Tortuga matamata</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/reptil2.png" alt="Dragon barbudo" style="width:85%">
                    <h2>Dragon barbudo</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/reptil1.png" alt="Geco" style="width:100%">
                    <h2>Geco</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/reptil3.png" alt="Anaconda" style="width:85%">
                    <h2>Anaconda</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
            </div>
            <br/>
            <br/>
            <br/>
            <button>
                <a href="Reptiles2.jsp">Siguiente</a>
            </button>
            <br/>
            <br/>
            <button>
                <a href="Menu_especies.jsp"> Regresar</a>
            </button>
        </div>
    </body>
</html>
