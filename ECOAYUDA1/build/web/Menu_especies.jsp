<%-- 
    Document   : Menu_especies
    Created on : 9/05/2021, 06:31:34 PM
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
            <h1 class="nombre">Selecciona el tipo de especie que quieres buscar</h1>
            <br/>
            <div class="cards">
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/loro.png" alt="loro" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="buttonEspecies" id="button1">
                            <a class="link" href="">Aves</a>
                        </button>                        
                    </center>
                </div>
                <br/>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/pez-payaso.png" alt="pez" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="buttonEspecies" id="button1">
                            <a class="link">Peces</a>
                        </button>                        
                    </center>
                </div>
                <br/>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/reptil.png" alt="reptil" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="buttonEspecies" id="button1">
                            <a class="link">Reptiles</a>
                        </button>                        
                    </center>
                    <br/> 
                </div>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/anfibio.png" alt="anfibio" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="buttonEspecies" id="button1">
                            <a class="link">Anfibios</a>
                        </button>                        
                    </center>
                </div>
                <br/>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/mono.svg" alt="mono" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="buttonEspecies" id="button1">
                            <a class="link">Mamíferos</a>
                        </button>                        
                    </center>
                </div>
                <br/> 
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/mosquito.png" alt="mosquito" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="buttonEspecies" id="button1">
                            <a class="link">Insectos</a>
                        </button>                        
                    </center>
                </div>
                <br/> 
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/hormiga.png" alt="hormiga" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="buttonEspecies" id="button1">
                            <a class="link">Artrópodos</a>
                        </button>                        
                    </center>
                </div>
                <br/>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/arana.png" alt="araña" style="width: 100px;" /> 
                    </div>
                    <center>
                        <button class="buttonEspecies" id="button1">
                            <a class="link">Arácnidos</a>
                        </button>                        
                    </center>
                </div>
                <br/>
                <div class="boxEspecies">
                    <div class="image">
                        <img src="imagenes/gusano.png" alt="gusano" style="width: 100px;" />
                    </div>
                    <center>
                        <button class="buttonEspecies" id="button1">
                            <a class="link">Anélidos</a>
                        </button>                        
                    </center>
                </div>
                <div/> 
            </div>
        </div>
        <button>
            <a href="Menu_usuario.jsp"> Regresar</a>
        </button>
            <br/>
            <br/>
    </div>
</body>
</html>
