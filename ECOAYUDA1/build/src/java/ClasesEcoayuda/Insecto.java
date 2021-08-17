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
public class Insecto extends Especie{
    public String tipoInsecto;
    public int numExtremidades = 0;
    public String tipoExtremidades = "";
    
    public Insecto (String nombreInsecto, String habitatInsecto, String alimentacionInsecto, String reproduccionInsecto, String tipoInsecto, int numExtremidadesInsecto, String tipoExtremidadesInsecto){
        this.nombreEspecie = nombreInsecto;
        this.habitat = habitatInsecto;
        this.alimentacion = alimentacionInsecto;
        this.reproduccion = reproduccionInsecto;
        this.tipoInsecto = tipoInsecto;
        this.numExtremidades = numExtremidadesInsecto;
        this.tipoExtremidades = tipoExtremidadesInsecto;
    }
}
