/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClasesEcoayuda.Listas;
import ClasesEcoayuda.Anfibio;
import ClasesEcoayuda.Ave;

/**
 *
 * @author stive
 */
public class ListaSimpleAnfibio {
     Nodo cabeza = null;
    int tamaño = 0;
    
    public void insertarPrincipioNodo(String nombreAnfibio, String habitatAnfibio, String alimentacionAnfibio, String reproduccionAnfibio, String tipoAnfibio, int numExtremidadesAnfibio, String tipoExtremidadesAnfibio){

        Nodo nodoNuevo = new Nodo(new Anfibio (nombreAnfibio, habitatAnfibio, alimentacionAnfibio, reproduccionAnfibio, tipoAnfibio, numExtremidadesAnfibio, tipoExtremidadesAnfibio));

        if (cabeza == null) {
            cabeza = nodoNuevo;
        } else {
            nodoNuevo.siguiente = cabeza;
            cabeza = nodoNuevo;
        }
        tamaño = tamaño + 1;
    }
    
    public void insertarFinaloNodo(String nombreAnfibio, String habitatAnfibio, String alimentacionAnfibio, String reproduccionAnfibio, String tipoAnfibio, int numExtremidadesAnfibio, String tipoExtremidadesAnfibio) {
        Nodo nodoNuevo = new Nodo(new Anfibio (nombreAnfibio, habitatAnfibio, alimentacionAnfibio, reproduccionAnfibio, tipoAnfibio, numExtremidadesAnfibio, tipoExtremidadesAnfibio));
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
    
    
    public void mostrarNodos() {

        if (cabeza == null) {
            System.out.println("no hay nodos");
        } else {
            Nodo apuntador = cabeza;

            while (apuntador.siguiente != null) {
                System.out.println("nombre del Anfibio: " + apuntador.dato.nombreEspecie);
                System.out.println("Habitat del Anfibio: " + apuntador.dato.habitat);
                System.out.println("Alimentación del Anfibio: " + apuntador.dato.alimentacion);
                System.out.println("Reproducción del Anfibio: " + apuntador.dato.reproduccion);
                System.out.println("tipo de Anfibio: " + apuntador.dato.tipoAve);
                System.out.println("Extremidades: " + apuntador.dato.numExtremidades);
                System.out.println("Tipo de extremidades: " + apuntador.dato.tipoExtremidades);
                apuntador = apuntador.siguiente;
            }
            System.out.println("nombre del ave: " + apuntador.dato.nombreEspecie);
                System.out.println("Habitat del Anfibio: " + apuntador.dato.habitat);
                System.out.println("Alimentación del Anfibio: " + apuntador.dato.alimentacion);
                System.out.println("Reproducción del Anfibio: " + apuntador.dato.reproduccion);
                System.out.println("tipo de Anfibio: " + apuntador.dato.tipoAve);
                System.out.println("Extremidades: " + apuntador.dato.numExtremidades);
                System.out.println("Tipo de extremidades: " + apuntador.dato.tipoExtremidades);
        }
    }
    
    public void destruirLista() {

        Nodo apuntador = null;
        cabeza = null;
        
    }
    
    public Ave obtenerAnfibio(int index) {
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
        return apuntador.dato;
    }
}
