/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClasesEcoayuda.Listas;
import ClasesEcoayuda.Ave;
import ClasesEcoayuda.Pez;

/**
 *
 * @author stive
 */
public class ListaSimplePez {
       Nodo cabeza = null;
        int tamaño = 0;

        public void insertarPrincipioNodo(String nombrePez, String habitatPez, String alimentacionPez, String reproduccionPez, String tipoPez, int numExtremidadesPez, String tipoExtremidadesPez) {

            Nodo nodoNuevo = new Nodo(new Pez(nombrePez, habitatPez, alimentacionPez, tipoPez, reproduccionPez, numExtremidadesPez, tipoExtremidadesPez));

            if (cabeza == null) {
                cabeza = nodoNuevo;
            } else {
                nodoNuevo.siguiente = cabeza;
                cabeza = nodoNuevo;
            }
            tamaño = tamaño + 1;
        }

        public void insertarFinalNodo(String nombrePez, String habitatPez, String alimentacionPez, String reproduccionPez, String tipoPez, int numExtremidadesPez, String tipoExtremidadesPez) {

            Nodo nodoNuevo = new Nodo(new Pez(nombrePez, habitatPez, alimentacionPez, tipoPez, reproduccionPez, numExtremidadesPez, tipoExtremidadesPez));
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

        public Pez obtenerPez(int index) {
            Nodo apuntador = null;
            if (cabeza != null) {
                int contador = 0;
                apuntador = cabeza;
                while (contador < index) {
                    apuntador = apuntador.siguiente;
                    contador++;
                }
            } else {
                System.out.println("No hay nodos");
            }
            return apuntador.dato3;
        }
    }


