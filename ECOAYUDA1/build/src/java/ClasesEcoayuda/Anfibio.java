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
public class Anfibio extends Especie{
    public String tipoAnfibio;
    public int numExtremidades = 0;
    public String tipoExtremidades = "";
    
    public Anfibio (String nombreAnfibio, String habitatAnfibio, String alimentacionAnfibio, String reproduccionAnfibio, String tipoAnfibio, int numExtremidadesAnfibio, String tipoExtremidadesAnfibio){
        this.nombreEspecie = nombreAnfibio;
        this.habitat = habitatAnfibio;
        this.alimentacion = alimentacionAnfibio;
        this.reproduccion = reproduccionAnfibio;
        this.tipoAnfibio = tipoAnfibio;
        this.numExtremidades = numExtremidadesAnfibio;
        this.tipoExtremidades = tipoExtremidadesAnfibio;
    }
}