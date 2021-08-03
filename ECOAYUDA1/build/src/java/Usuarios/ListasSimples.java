package Usuarios;


import Usuarios.Listas;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author stive
 */
public class ListasSimples {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Listas lista = new Listas();
        lista.insertarPrincipioNodo("camila212", "camila","lopera","12345","ccc@tets.com","admin");
        lista.insertarPrincipioNodo("luisa212", "Luisa","muñoz","123","bbb@tets.com","user");
        lista.insertarFinalNodo("luis212", "Luis","lopera","123","aaa@tets.com","admin");
        lista.mostrar();
        System.out.println("Lista recuperada por posición " + lista.getUsuario(2).nombre);
        System.out.println("Lista recuperada por posición "+ lista.getUsuario(2).apellido);
        System.out.println("Lista recuperada por posición"+ lista.getUsuario(2).perfil);
    }
    
}