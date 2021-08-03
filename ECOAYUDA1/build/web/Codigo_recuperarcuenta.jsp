<%-- 
    Document   : Codigo_recuperarcuenta
    Created on : 2/05/2021, 02:36:56 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Codigo</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <h2 class="nombre">Recuperar cuenta</h2>
            <br/>
            <p>Ingrese el codigo que fue enviado al correo para recuperar la cuenta</p>
            <br/>
            <input
                class="form-control"
                type="text"
                placeholder="Codigo"/>
            <br/>
            <br/>
            <button>
                <a href="Recuperar_contrasena.jsp">Continuar</a>
            </button>
            <br/>
            <br/>
            <button>
                <a href="Iniciosecion.jsp">Regresar</a>
            </button>

        </div>
    </body>
</html>
