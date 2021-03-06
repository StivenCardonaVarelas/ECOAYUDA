<%-- 
    Document   : Menu_admi
    Created on : 4/05/2021, 04:48:40 PM
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
        <script type="text/javascript" src="Js/Js3.js"></script>
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Menú</title>
    </head>
    <body>

        <div  class="container">
            <h1 class="nombre">¿Qué deseas consultar?</h1>
            <br/>
            <div class="cards">
                <div  class="card">
                    <img src="imagenes/huella.svg" alt="huella" style="width:80%">
                    <h2>Especies</h2>
                    <p><button class="boton"> <a href="Menu_especie_Admin.jsp">Ingresar</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/bosque.svg" alt="parque" style="width:80%">
                    <h2>Parques</h2>
                    <p><button class="boton"> <a href="Crear_parque_Admin.jsp">Ingresar</a></button></p>
                </div>
                <br/>
                <div class="card">
                    <img src="imagenes/clinica.svg" alt="clinica" style="width:80%">
                    <h2>Clinicas</h2>
                    <p><button class="boton"> <a href="">Ingresar</a></button></p>
                </div>
                <br/>
                <form method="post" action="UsuarioAdmin" id="llamarServlet" onClick="llamarServlet('llamarServlet')">
                    <div class="card">
                        <img src="imagenes/Users.png" alt="Usuarios" style="width:80%">
                        <h2>Usuarios</h2>

                        <p>
                            <input   class="boton"type="submit" name="Ingresar" value="Ingresar">
                        </p>
                    </div>
                    <input   type="hidden" name="pagina" value="Menu_admi">

                </form>
            </div>
            <br/>
            <br/>
            <button class="boton">
                <a href="Perfiles_usuarios.jsp"> Regresar</a>
            </button>

        </div>
    </body>
</html>
