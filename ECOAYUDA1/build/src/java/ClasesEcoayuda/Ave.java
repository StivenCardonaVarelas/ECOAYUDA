/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClasesEcoayuda;

public class Ave extends Especie{
    
    public String tipoAve;
    public int numExtremidades = 2;
    public String tipoExtremidades = "Alas";
    
    public Ave (String nombreAve, String habitatAve, String alimentacionAve, String reproduccionAve, String tipoAve, int numExtremidades, String tipoExtremidades){
        this.nombreEspecie = nombreAve;
        this.habitat = habitatAve;
        this.alimentacion = alimentacionAve;
        this.reproduccion = reproduccionAve;
        this.tipoAve = tipoAve;
        this.numExtremidades = numExtremidades;
        this.tipoExtremidades = tipoExtremidades;
    }
}
