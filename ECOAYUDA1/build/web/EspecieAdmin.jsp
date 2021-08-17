<%-- 
    Document   : EspecieAdmin
    Created on : 15/08/2021, 06:51:42 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="shortcut icon" href="imagenes/LogotipoEcoayuda.jpeg">
        <link href="Styles.css" rel="Stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="Js/Crearespecie.js"></script>
        <title>Administrador Especies</title>
    </head>
    <body>
    <nav class="navbar navbar-light bg-light">
        <a href="" class="navbar-brand">
            Add Species
        </a>
    </nav>
    <div class="container">
        <div id="specie" class="row pt-10">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-header">
                        <h4>Add Specie</h4>
                    </div>
                    <form id="specie-form" class="card-body">
                        <div class="form-group">
                            <input type="text" id="name" placeholder="Spacie Name" class="form-control">
                        </div>
                        <div class="form-group">
                        <input type="file" id="image"  placeholder="Product Price" class="form-control">
                        </div>
                        <input type="submit" value="Save" class="btn btn-primary btn-block">

                    </form>
                </div>
            </div>
        </div>
       
       <br>
        <div id="specie-list" class="col-md-8"></div>
    </div>
</body>
</html>

