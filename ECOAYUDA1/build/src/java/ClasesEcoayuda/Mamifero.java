/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClasesEcoayuda;

/**
 *
 * @author stive
 */
public class Mamifero extends Especie{
    public String tipoMamifero;
    public int numExtremidades = 4;
    public String tipoExtremidades = "patas";
    
    public Mamifero (String nombreMamifero, String habitatMamifero, String alimentacionMamifero, String reproduccionMamifero, String tipoMamifero, int numExtremidadesMamifero, String tipoExtremidadesMamifero){
        this.nombreEspecie = nombreMamifero;
        this.habitat = habitatMamifero;
        this.alimentacion = alimentacionMamifero;
        this.reproduccion = reproduccionMamifero;
        this.tipoMamifero = tipoMamifero;
        this.numExtremidades = numExtremidadesMamifero;
        this.tipoExtremidades = tipoExtremidadesMamifero;
    }
}
