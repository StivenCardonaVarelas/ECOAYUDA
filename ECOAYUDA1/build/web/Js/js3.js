function llamarServlet(idFormulario){
    formulario= document.getElementById(idFormulario);
    formulario.action= "UsuarioAdmin";
    formulario.method="post";
    formulario.submit();
    
    
    
    
    
}


