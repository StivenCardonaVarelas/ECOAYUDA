<%-- 
    Document   : Recuperar_contrasena
    Created on : 2/05/2021, 02:36:35 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Restablecer contrasena</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
         <link href="Styles.css" rel="Stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            
             <h2 class="nombre">Recuperar cuenta</h2>
             <br/>
            <p>Ingresar la nueva contraseña</p>
            <br/>
            <input
                class="form-control"
                type="password"
                placeholder="Contraseña"/>
            <br/>
            <p>Repite la  contraseña</p>
            <br/>
            <input
                class="form-control"
                type="password"
                placeholder="Contraseña"/>
            <br/>
            <br/>
            <button>
                <a href="Iniciosecion.jsp">Continuar</a>
            </button>
            <br/>
            <br/>
            <button>
                <a href="Iniciosecion.jsp">Regresar</a>
            </button>
            
            
        </div>
    </body>
</html>
