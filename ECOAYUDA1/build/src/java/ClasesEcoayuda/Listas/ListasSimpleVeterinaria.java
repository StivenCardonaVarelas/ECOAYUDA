/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClasesEcoayuda.Listas;
import ClasesEcoayuda.Ave;
import ClasesEcoayuda.Veterinaria;
/**
 *
 * @author stive
 */
public class ListasSimpleVeterinaria {
    Nodo cabeza = null;
    int tamaño = 0;
    
    public void insertarPrincipioNodo(String nombre,String ubicacion, String telefono, String horario) {

        Nodo nodoNuevo = new Nodo(new Veterinaria (nombre, ubicacion, telefono, horario));

        if (cabeza == null) {
            cabeza = nodoNuevo;
        } else {
            nodoNuevo.siguiente = cabeza;
            cabeza = nodoNuevo;
        }
        tamaño = tamaño + 1;
    }
    
    public void insertarFinaloNodo(String nombre,String ubicacion, String telefono, String horario) {
        Nodo nodoNuevo = new Nodo(new Veterinaria (nombre, ubicacion, telefono, horario));
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
                System.out.println("nombre del ave: " + apuntador.dato.nombreEspecie);
                System.out.println("Habitat del ave: " + apuntador.dato.habitat);
                System.out.println("Alimentación del ave: " + apuntador.dato.alimentacion);
                System.out.println("Reproducción del ave: " + apuntador.dato.reproduccion);
                System.out.println("tipoAve: " + apuntador.dato.tipoAve);
                System.out.println("Extremidades: " + apuntador.dato.numExtremidades);
                System.out.println("Tipo de extremidades: " + apuntador.dato.tipoExtremidades);
                apuntador = apuntador.siguiente;
            }
            System.out.println("nombre del ave: " + apuntador.dato.nombreEspecie);
                System.out.println("Habitat del ave: " + apuntador.dato.habitat);
                System.out.println("Alimentación del ave: " + apuntador.dato.alimentacion);
                System.out.println("Reproducción del ave: " + apuntador.dato.reproduccion);
                System.out.println("tipoAve: " + apuntador.dato.tipoAve);
                System.out.println("Extremidades: " + apuntador.dato.numExtremidades);
                System.out.println("Tipo de extremidades: " + apuntador.dato.tipoExtremidades);
        }
    }
    
    public void destruirLista() {

        Nodo apuntador = null;
        cabeza = null;
        
    }
    
    public Veterinaria obtenerVeterinaria(int index) {
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
        return apuntador.dato7;
    }
}
