/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClasesEcoayuda.Listas;

import ClasesEcoayuda.Anfibio;
import ClasesEcoayuda.Ave;
import ClasesEcoayuda.Insecto;
import ClasesEcoayuda.Mamifero;
import ClasesEcoayuda.ParqueNatural;
import ClasesEcoayuda.Pez;
import ClasesEcoayuda.Reptil;
import ClasesEcoayuda.Veterinaria;

public class Nodo {

    public Nodo siguiente = null;
    public Ave dato;
    public Reptil dato2;
    public Anfibio dato6;
    public Insecto dato5;
    public Mamifero dato4;
    public Veterinaria dato7;
    public Pez dato3;
    public ParqueNatural dato8;

    public Nodo() {
    }

    public Nodo(Ave dato) {
        this.dato = dato;
    }

    public Nodo(Reptil dato2) {
        this.dato2 = dato2;
    }

    public Nodo(Anfibio dato6) {
        this.dato6 = dato6;
    }

    public Nodo(Insecto dato5) {
        this.dato5 = dato5;
    }

    public Nodo(Mamifero dato4) {
        this.dato4 = dato4;
    }

    public Nodo(Veterinaria dato7) {
        this.dato7 = dato7;
    }
    public Nodo(ParqueNatural dato8) {
        this.dato8 = dato8;
    }
    public Nodo(Pez dato3) {
        this.dato3 = dato3;
    }
    

}
