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
public class Listas {
    Nodo cabeza=null;
 Nodo apuntador=null;
 int size=0;
 public void insertarPrincipioNodo(String nombreUsuario, String nombre,String apellido, String contrasena, String correo, String perfil) {
        Nodo newNodo = new Nodo(new Usuario(nombreUsuario, nombre, apellido, contrasena, correo, perfil));
        if (cabeza == null) {
            cabeza = newNodo;
        } else {
            newNodo.siguiente = cabeza;
            cabeza = newNodo;
            
        }
    size++;
    }
 public void insertarFinalNodo(String nombreUsuario, String nombre, String apellido, String contrasena, String correo, String perfil) {
        Nodo newNodo = new Nodo(new Usuario(nombreUsuario, nombre, apellido, contrasena, correo, perfil));
      apuntador=null;
        if (cabeza == null) {
            newNodo = cabeza;
        } else {
            apuntador = cabeza;
            while (apuntador.siguiente != null) {
                apuntador = apuntador.siguiente;
            }
            apuntador.siguiente = newNodo;
               
        }
        size++;
    }
 public  int getSize(){return size;}
 
 public Usuario getUsuario(int index){
 if(cabeza!=null){
 apuntador=cabeza;    
 int contador=0;
 while(contador<index){
 apuntador=apuntador.siguiente;
 contador=contador+1;
 }
 
 }
 else{
     System.out.println("Esa lis está vacia");
 }
 return apuntador.dato;
 }
 
 public void mostrar() {
       
        if (cabeza == null) {
            System.out.println("No hay nodos");
        } else {
            apuntador = cabeza;
            while (apuntador.siguiente != null) {
                System.out.println(apuntador.dato.nombre);
                apuntador = apuntador.siguiente;
            }
        }
        System.out.println(apuntador.dato.nombre);
    }
 public void destruir(){
 cabeza=null;
 apuntador=null;
 
 }
}
