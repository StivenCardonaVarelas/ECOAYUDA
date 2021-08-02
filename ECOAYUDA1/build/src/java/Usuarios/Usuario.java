package Usuarios;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author stive
 */
public class Usuario {
     public String nombreUsuario;
    public String nombre;
    public String apellido;
    public String contrasena;
    public String correo;
    public String perfil;

    public Usuario(String nombreUsuario, String nombre, String apellido, String contrasena, String correo, String perfil) {
        this.nombreUsuario = nombreUsuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.contrasena = contrasena;
        this.correo = correo;
        this.perfil = perfil;
    }
}
