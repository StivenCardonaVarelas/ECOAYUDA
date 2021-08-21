/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function esVacio(str) {
    return(!str || str.length === 0);
}
function stringVacio(str) {

    return(!str || /^\s*$/.test(str));

}
function validar() {
    var estado = true;
    var tiempo = 4000;

    var nombre = document.querySelector('[name=nombre]').value;
    if (esVacio(nombre) || stringVacio(nombre)) {

        e = document.getElementById('nombre');
        e.style.visibility = 'visible';
        e.innerHTML = "Ingrese nombre!";
        setTimeout(function () {
            e.style.visibility = 'hidden';
        }, tiempo);

        estado = false;


    }
    ///validar apellido
    var apellido = document.querySelector('[name=apellido]').value;

    if (esVacio(apellido) || stringVacio(apellido)) {

        e1 = document.getElementById('apellido');
        e1.style.visibility = 'visible';
        e1.innerHTML = "Ingrese apellido!";
        setTimeout(function () {
            e1.style.visibility = 'hidden';
        }, tiempo);

        estado = false;
    }
    //validar email
    var email = document.querySelector('[name=correo]').value;
    if (esVacio(email) || stringVacio(email)) {
        e3 = document.getElementById('email');
        e3.style.visibility = 'visible';
        e3.innerHTML = "Ingrese email!";
        setTimeout(function () {
            e3.style.visibility = 'hidden';
        }, tiempo);

        estado = false;
    }
    //validar nombre de usuario
    var nombreUsuario = document.querySelector('[name=nombreUsuario]').value;

    if (esVacio(nombreUsuario) || stringVacio(nombreUsuario)) {
        e2 = document.getElementById('nombreUsuario');
        e2.style.visibility = 'visible';
        e2.innerHTML = "Ingrese nombre usuario!";
        setTimeout(function () {
            e2.style.visibility = 'hidden';
        }, tiempo);
        estado = false;
    }

    //validar contraseña
    var contrasena = document.querySelector('[name=contrasena]').value;
    if (esVacio(contrasena) || stringVacio(contrasena)) {
        e4 = document.getElementById('contrasena');
        e4.style.visibility = 'visible';
        e4.innerHTML = "Ingrese contraseña";
        setTimeout(function () {
            e4.style.visibility = 'hidden';
        }, tiempo);
        estado = false;
    }
    //validacion de la dijitacion de la contraseña 
    if (!esVacio(contrasena) && contrasena.length < 8) {
        e5 = document.getElementById('contrasena');
        e5.style.visibility = 'visible';
        e5.innerHTML = "contraseña de 8 carateres";
        setTimeout(function () {
            e5.style.visibility = 'hidden';
        }, tiempo);
        estado = false;

    }








    return estado;
}

function validarIniciosesion() {
    var estado = true;
    var tiempo = 4000;

    var nombreUsuario = document.querySelector('[name=NombreUsuario]').value;
    //validacion nombre de usuario
    if (esVacio(nombreUsuario) || stringVacio(nombreUsuario)) {
        e2 = document.getElementById('nombreUsuario');
        e2.style.visibility = 'visible';
        e2.innerHTML = "Ingrese nombre usuario!";
        setTimeout(function () {
            e2.style.visibility = 'hidden';
        }, tiempo);
        estado = false;
    }
    //validar contraseña

    var contrasena = document.querySelector('[name=contrasena]').value;
    if (esVacio(contrasena) || stringVacio(contrasena)) {
        e4 = document.getElementById('contrasena');
        e4.style.visibility = 'visible';
        e4.innerHTML = "Ingrese contraseña";
        setTimeout(function () {
            e4.style.visibility = 'hidden';
        }, tiempo);
        estado = false;
    }

    if (!esVacio(contrasena) && contrasena.length < 8) {
        e5 = document.getElementById('contrasena');
        e5.style.visibility = 'visible';
        e5.innerHTML = "contraseña de 8 carateres";
        setTimeout(function () {
            e5.style.visibility = 'hidden';
        }, tiempo);
        estado = false;

    }







    return estado;

}

//validacion de iniciosesion 
function validarRegistro(respuesta) {
    var tiempo = 4000;
    e = document.getElementById('validar');
    e.style.visibility = 'visible';
   

    if (respuesta === 'incorrecto') {
        setTimeout(function () {
            e.style.visibility = 'hidden';
            e.style.height= 50+'px';
        }, tiempo);

        e.innerHTML = "contraseña Invalida <br/>Usuario Invalido";

    }else if (respuesta === 'Usuraio invalido') {
        e.innerHTML = "Usuario Invalido";
        setTimeout(function () {
            e.style.visibility = 'hidden';
        }, tiempo);


    }else if (respuesta === 'contraseña invalido') {
         e.innerHTML = 'contraseña Invalido';
        setTimeout(function () {
            e.style.visibility = 'hidden';
        }, tiempo);

       
    } 

}




