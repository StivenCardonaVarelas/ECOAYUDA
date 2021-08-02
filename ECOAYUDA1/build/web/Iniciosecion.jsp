
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio sesion</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">

    </head>

    <body>

        <div class="container">
            <h1 class="nombre">Inicio Sesion</h1>
            <form>
                <h2>Usuario</h2>
                <input
                    class="form-control"
                    type="text"
                    name="NombreUsuario"
                    placeholder="Nombre usuario"

                    />
                <br />
                <br />
                <h2>Contraseña</h2>
                <input
                    class="form-control"
                    name="Contraseña"
                    type="password"
                    placeholder="Contraseña"

                    />
                <br />
                <br />
                <button>

                    <a  type="submit" href="Perfiles_usuarios.jsp">Ingresar</a>

                </button>
                <br />
                <br/>
                <a id="Recu-contra" href="Recuperar_contra.jsp">Olvidaste tu contraseña</a>
                <br />
                <br />
                <a id="crear-cuenta" href="Crear_cuenta.jsp">Crear cuenta</a>
                <br />
                <br />
                <input type="submit"  href="index.jsp"value="Regresar">
            </form>
        </div> 
    </body>
    
</html>
