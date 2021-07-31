<%-- 
    Document   : Anfibios
    Created on : 15/06/2021, 02:31:45 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Anfibios</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Selecciona el tipo de anfibio</h1>
            <br/>
            <div class="cards" class="boxEspecies">
                <div  class="card">
                    <img src="imagenes/anfibio1.png" alt="Rana dorada" style="width:100%">
                    <h2>Rana dorada</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div  class="card">
                    <img src="imagenes/anfibio2.webp" alt="Rana felcha" style="width:80%">
                    <h2>Rana flecha</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div  class="card">
                    <img src="imagenes/anfibio3.png" alt="Ajolote" style="width:65%">
                    <h2>Ajolote</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
                <br/>
                <div  class="card">
                    <img src="imagenes/anfibio4.png" alt="Rana cornuda" style="width:110%">
                    <h2>Rana cornuda</h2>
                    <p><button> <a href="Menu_especies.jsp">Ver</a></button></p>
                </div>
            </div
            <br/>
            <br/>
            <button>
                <a href="Menu_especies.jsp">Salir</a>
            </button>
        </div>
    </body>
</html>

