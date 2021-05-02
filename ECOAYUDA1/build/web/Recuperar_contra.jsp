<%-- 
    Document   : Recuperar_contra
    Created on : 2/05/2021, 02:36:14 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="Styles.css" type="text/css"/>
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <title>Recuperar contraseña</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="container">
            <h2 class="nombre">Recuperar cuenta</h2>
            <br/>
            <p>Ingrese el correo electronico para recuperar la cuenta</p>
            <br/>
            <input
                class="form-control"
                type="email"
                placeholder="correo electronico" />
            <br/>
            <br/>
             <button>
                <a href="Codigo_recuperarcuenta.jsp">Continuar</a>
            </button>
            <br/>
             <br/>
             <button>
                <a href="Iniciosecion.jsp">Regresar</a>
            </button>
            
        </div>
    </body>
</html>
