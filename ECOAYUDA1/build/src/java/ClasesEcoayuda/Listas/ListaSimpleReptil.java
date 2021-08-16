/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClasesEcoayuda.Listas;


import ClasesEcoayuda.Reptil;

public class ListaSimpleReptil {
    
    Nodo cabeza = null;
    int tamaño = 0;
    
    public void insertarPrincipioNodo(String nombreReptil, String habitatReptil, String alimentacionReptil, String tipoReptil, String reproduccionReptil, int numExtremidades,String tipoExtremidadesReptil) {

        Nodo nodoNuevo = new Nodo(new Reptil (nombreReptil, habitatReptil, alimentacionReptil, tipoReptil, reproduccionReptil, numExtremidades, tipoExtremidadesReptil));

        if (cabeza == null) {
            cabeza = nodoNuevo;
        } else {
            nodoNuevo.siguiente = cabeza;
            cabeza = nodoNuevo;
        }
        tamaño = tamaño + 1;
    }
    
    public void insertarFinalNodo(String nombreReptil, String habitatReptil, String alimentacionReptil, String tipoReptil, String reproduccionReptil, int numExtremidades,String tipoExtremidadesReptil) {

        Nodo nodoNuevo = new Nodo(new Reptil (nombreReptil, habitatReptil, alimentacionReptil, tipoReptil, reproduccionReptil, numExtremidades, tipoExtremidadesReptil));
        Nodo apuntador;
        
        if (cabeza == null) {
            cabeza = nodoNuevo;
        } else {
            apuntador = cabeza;

            while (apuntador.siguiente != null) {
                apuntador = apuntador.siguiente;
            }
            apuntador.siguiente = nodoNuevo;
        }
        tamaño = tamaño + 1;
    }
    
    public void borrarNodo(int posicion) {
        Nodo apuntador = cabeza;
        Nodo temporal = null;
        if (posicion == 0) {
            temporal = cabeza;
            cabeza = cabeza.siguiente;
            apuntador = cabeza;
            temporal = null;
        } else {
            if (posicion <= tamaño) {
                apuntador = cabeza;
                int contador = 0;
                while (apuntador.siguiente != null && contador < posicion - 1) {
                    apuntador = apuntador.siguiente;
                    contador = contador + 1;
                }
                temporal = apuntador.siguiente;
                apuntador.siguiente = apuntador.siguiente.siguiente;
                tamaño = tamaño - 1;
                temporal = null;
                System.out.println("Nodo eliminado");
            } else {
                System.out.println("La posición es mayor al tamaño");
            }
        }
    }
    
    public void destruirLista() {

        Nodo apuntador = null;
        cabeza = null;
        
    }
    
    public Reptil obtenerReptil(int index) {
        Nodo apuntador = null;
        if (cabeza != null) {
            int contador = 0;
            apuntador = cabeza;
            while (contador < index) {
                apuntador = apuntador.siguiente;
                contador++;
            }           
        }else {
            System.out.println("No hay nodos");
        }
        return apuntador.dato2;
    }
}
