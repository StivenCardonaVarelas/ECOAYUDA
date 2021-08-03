<%-- 
    Document   : Parque3
    Created on : 27/06/2021, 01:52:25 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Parque explora</title>
    </head>
    <body>
        <div class="container">

            <h1 class="nombre">Parque Explora</h1>
            <br/>
            <div class="parque">
                <div>
                    <img class="icono" src="imagenes/parque3.png" alt="foto_GardinBotanico" />
                </div>
            </div>
            <br/>
            <br />
            <section>
                <center>
                    <div class="containerparque">

                        <div class="boxparque">
                            <p>Dirección: <label id="Direccion_botanico"> ****** </label> </p>
                            <p>Horario:   <label id="Horaio_botanico"> ****** </label>  </p>
                            <p>Telefono:   <label id="Telefono_botanico"> ****** </label>  </p>
                        </div>

                        <div class="boxDireccionparque">
                            <div class="image">
                                <img src="imagenes/Captura.PNG" alt="img_2" style="width: 300px; border-radius: 30px;" />
                            </div>
                        </div>
                    </div>
                </center>
                <button>
                    <a href="Parques.jsp"> Regresar</a>
                </button>
            </section>
        </div>
    </body>
</html>
