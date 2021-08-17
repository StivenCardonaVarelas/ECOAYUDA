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
public class Pez extends Especie{
    public String tipoPez;
    public int numExtremidades = 0;
    public String tipoExtremidades = "Aletas";
    
    public Pez (String nombrePez, String habitatPez, String alimentacionPez, String reproduccionPez, String tipoPez, int numExtremidadesPez, String tipoExtremidadesPez){
        this.nombreEspecie = nombrePez;
        this.habitat = habitatPez;
        this.alimentacion = alimentacionPez;
        this.reproduccion = reproduccionPez;
        this.tipoPez = tipoPez;
        this.numExtremidades = numExtremidadesPez;
        this.tipoExtremidades = tipoExtremidadesPez;
    }
}