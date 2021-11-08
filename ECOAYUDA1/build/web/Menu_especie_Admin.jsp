<%-- 
    Document   : Menu_especie_Admin
    Created on : 30/08/2021, 03:28:43 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <title>Menú Especies</title>
    </head>
    <body>
        <div class="container">
            <h1 class="nombre">Selecciona el tipo de especie que quieres conocer</h1>
            <br/>
            <div class="cards">
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/loro.png" alt="loro" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="boton" id="button1">
                            <a class="link" href="Crear_ave_Admin.jsp">Aves</a>
                        </button>                        
                    </center>
                </div>
                <br/>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/pez-payaso.png" alt="pez" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="boton" id="button1">
                            <a class="link" href="Crear_pez_Admin.jsp">Peces</a>
                        </button>                        
                    </center>
                </div>
                <br/>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/reptilmenu.png" alt="reptil" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="boton" id="button1">
                            <a class="link" href="Crear_reptil_Admin.jsp">Reptiles</a>
                        </button>                        
                    </center>
                    <br/> 
                </div>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/anfibio.png" alt="anfibio" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="boton" id="button1">
                            <a class="link" href="Crear_anfibio_Admin.jsp">Anfibios</a>
                        </button>                        
                    </center>
                </div>
                <br/>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/mono.svg" alt="mono" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="boton" id="button1">
                            <a class="link" href="Mamifero.jsp">Mamíferos</a>
                        </button>                        
                    </center>
                </div>
                <br/> 
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/mosquito.png" alt="mosquito" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="boton" id="button1">
                            <a class="link" href=Crear_insecto_Admin.jsp>Insectos</a>
                        </button>                        
                    </center>
                </div>
                <br/> 
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/hormiga.png" alt="hormiga" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="boton" id="button1">
                            <a class="link" href="Artropodos.jsp">Artrópodos</a>
                        </button>                        
                    </center>
                </div>
                <br/>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/arana.png" alt="araña" style="width: 100px;" /> 
                    </div>
                    <center>
                        <button class="boton" id="button1">
                            <a class="link" href="Aracnidos.jsp">Arácnidos</a>
                        </button>                        
                    </center>
                </div>
                <br/>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/gusano.png" alt="gusano" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="boton" id="button1">
                            <a class="link" href="Anelidos.jsp">Anélidos</a>
                        </button>                        
                    </center>
                </div
                <br/>
                 <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/cnidario.png" alt="gusano" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="boton" id="button1">
                            <a class="link" href="Anelidos.jsp">Cnidarios</a>
                        </button>                        
                    </center>
                </div>
                <div/> 
            </div>
        </div>
        <button class="boton">
            <a href="Menu_admi.jsp"> Regresar</a>
        </button>
            <br/>
            <br/>
    </div>
</body>
</html>
