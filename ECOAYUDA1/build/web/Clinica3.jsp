<%-- 
    Document   : Clinica3
    Created on : 27/06/2021, 02:36:29 PM
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
        <title>Nombre de la clinica</title>
    </head>
    <body>
        <div class="container">

            <h1 class="nombre">"Nombre Veterinaria"</h1>
            <br/>
            <div class="clinica">
                
           <div>
            <img class="fondo" src="" alt=""/>
        </div>
                <img class="icono" src="imagenes/hospital.svg" alt="foto_clinica" />
            </div>
            <br/>
            <br />
            

            <section>
                <center>
                    <div class="containerClinica">

                        <div class="boxClinica">
                            <p>Dirección: <label id="Direccion_botanico"> ****** </label> </p>
                            <p>Horario:   <label id="Horaio_botanico"> ****** </label>  </p>
                            <p>Telefono:   <label id="Telefono_botanico"> ****** </label>  </p>
                        </div>

                        <div class="boxDireccionClinica">
                            <div class="image">
                                <img src="imagenes/Captura.PNG" alt="img_2" style="width: 300px; border-radius: 30px;" />
                            </div>
                        </div>
                    </div>
                </center>
                <button>
                <a href="Menuclinicas.jsp"> Regresar</a>
            </button>
            </section>
        </div>
    </body>
</html>
