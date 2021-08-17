/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClasesEcoayuda.Listas;
import ClasesEcoayuda.Insecto;

/**
 *
 * @author stive
 */
public class ListaSimpleInsecto {
    Nodo cabeza = null;
    int tamaño = 0;
    
    public void insertarPrincipioNodo(String nombreInsecto, String habitatInsecto, String alimentacionInsecto, String reproduccionInsecto, String tipoInsecto, int numExtremidadesInsecto, String tipoExtremidadesInsecto) {

        Nodo nodoNuevo = new Nodo(new Insecto (nombreInsecto, habitatInsecto, alimentacionInsecto, reproduccionInsecto, tipoInsecto, numExtremidadesInsecto, tipoExtremidadesInsecto));

        if (cabeza == null) {
            cabeza = nodoNuevo;
        } else {
            nodoNuevo.siguiente = cabeza;
            cabeza = nodoNuevo;
        }
        tamaño = tamaño + 1;
    }
    
    public void insertarFinaloNodo(String nombreInsecto, String habitatInsecto, String alimentacionInsecto, String reproduccionInsecto, String tipoInsecto, int numExtremidadesInsecto, String tipoExtremidadesInsecto) {
        Nodo nodoNuevo = new Nodo(new Insecto (nombreInsecto, habitatInsecto, alimentacionInsecto, reproduccionInsecto, tipoInsecto, numExtremidadesInsecto, tipoExtremidadesInsecto));
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
                System.out.println("nombre del insecto: " + apuntador.dato5.nombreEspecie);
                System.out.println("Habitat del insecto: " + apuntador.dato5.habitat);
                System.out.println("Alimentación del insecto: " + apuntador.dato5.alimentacion);
                System.out.println("Reproducción del insecto: " + apuntador.dato5.reproduccion);
                System.out.println("tipo insecto: " + apuntador.dato5.tipoInsecto);
                System.out.println("Extremidades: " + apuntador.dato5.numExtremidades);
                System.out.println("Tipo de extremidades: " + apuntador.dato5.tipoExtremidades);
                apuntador = apuntador.siguiente;
            }
            System.out.println("nombre del insecto: " + apuntador.dato5.nombreEspecie);
                System.out.println("Habitat del insecto: " + apuntador.dato5.habitat);
                System.out.println("Alimentación del insecto: " + apuntador.dato5.alimentacion);
                System.out.println("Reproducción del insecto: " + apuntador.dato5.reproduccion);
                System.out.println("tipo insecto: " + apuntador.dato5.tipoInsecto);
                System.out.println("Extremidades: " + apuntador.dato5.numExtremidades);
                System.out.println("Tipo de extremidades: " + apuntador.dato5.tipoExtremidades);
        }
    }
    
    public void destruirLista() {

        Nodo apuntador = null;
        cabeza = null;
        
    }
    
    public Insecto obtenerInsecto(int index) {
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
        return apuntador.dato5;
    }
}

