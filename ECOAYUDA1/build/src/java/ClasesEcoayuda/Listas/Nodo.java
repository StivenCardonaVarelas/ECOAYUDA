/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClasesEcoayuda.Listas;

import ClasesEcoayuda.Ave;
import ClasesEcoayuda.Reptil;



public class Nodo {
    public Nodo siguiente = null;
    public Ave dato;
    public Reptil dato2;
    
    public Nodo() {
    }

    public Nodo(Ave dato) {
        this.dato = dato;
    }

    public Nodo(Reptil dato2) {
        this.dato2 = dato2;
    }
}
