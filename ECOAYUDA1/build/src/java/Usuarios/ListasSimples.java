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
        lista.insertarPrincipioNodo("1", "Hugo");
        lista.insertarPrincipioNodo("2", "Paco");
        lista.insertarFinalNodo("3", "Luis");
        lista.mostrar();
        System.out.println("Lista recuperada por posición " + lista.getUsuario(2).nombre);
    }
    
}
