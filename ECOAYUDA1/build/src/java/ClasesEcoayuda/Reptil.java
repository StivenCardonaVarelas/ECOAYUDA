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
public class Reptil extends Especie{
    
    public String tipoReptil;
    public int numExtremidades = 4;
    public String tipoExtremidadesReptil;
    
    public Reptil(String nombreReptil, String habitatReptil, String alimentacionReptil, String tipoReptil, String reproduccionReptil, int numExtremidades, String tipoExtremidades){
        this.nombreEspecie = nombreReptil;
        this.habitat = habitatReptil;
        this.alimentacion = alimentacionReptil;
        this.tipoReptil = tipoReptil;
        this.reproduccion = reproduccionReptil;
        this.numExtremidades = numExtremidades;
        this.tipoExtremidadesReptil = tipoExtremidadesReptil;
    }
    
    
}
