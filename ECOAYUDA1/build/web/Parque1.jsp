<%-- 
    Document   : Parque1
    Created on : 9/05/2021, 06:15:25 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Jardin Botanico</title>
    </head>
    <body>
    <body>
        <div class="container">

            <h1 class="nombre">Jardín Botaníco</h1>
            <br/>
            <div class="parque">
                <div>
                    <img class="icono" src="imagenes/Jardín-Botánico-1.jpg" alt="foto_GardinBotanico" />
                </div>
            </div>
            <br/>
            <br />


            <section>
                <center>
                    <div class="containerparque">

                        <div class="boxparque">
                            <p>Dirección: <label name="Direccion_botanico"> ****** </label> </p>
                            <p>Horario:   <label name="Horaio_botanico"> ****** </label>  </p>
                            <p>Telefono:   <label name="Telefono_botanico"> ****** </label>  </p>
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
</body>
</html>
