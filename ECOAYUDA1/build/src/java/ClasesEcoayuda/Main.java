package ClasesEcoayuda;

import java.util.Scanner;
import ClasesEcoayuda.Listas.ListaSimpleAve;


public class Main {
    
    public static void main(String[] args){
        
        Scanner lector = new Scanner(System.in);
        ListaSimpleAve lista = new ListaSimpleAve();
        
               
        System.out.println("Digite el nombre del ave");
        String nombreAve = lector.nextLine();
        
        System.out.println("Digite el habitat del ave: ");
        String habitatAve = lector.nextLine();
        
        System.out.println("Digite la alimentacion del ave: ");
        String alimentacionAve = lector.nextLine();
        
        System.out.println("Digite la reproduccion del ave: ");
        String reproduccionAve = lector.nextLine();
        
        System.out.println("Digite el tipo del ave: ");
        String tipoAve = lector.nextLine();
        
        lista.insertarPrincipioNodo(nombreAve, habitatAve, alimentacionAve, reproduccionAve, tipoAve, 2, tipoAve);
        lista.mostrarNodos();
    }
}
