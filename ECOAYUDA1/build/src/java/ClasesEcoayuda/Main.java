package ClasesEcoayuda;

import java.util.Scanner;
import ClasesEcoayuda.Listas.ListaSimpleAve;
import ClasesEcoayuda.Listas.ListaSimpleMamifero;
import ClasesEcoayuda.Listas.ListaSimpleInsecto;

public class Main {

    public static void main(String[] args) {

        Scanner lector = new Scanner(System.in);
        ListaSimpleAve lista = new ListaSimpleAve();
        ListaSimpleMamifero lista1 = new ListaSimpleMamifero();
        ListaSimpleInsecto lista2 = new  ListaSimpleInsecto();
        
        System.out.println("<<<<<</Aves/>>>>>");
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
        //Inico de datos de los mamiferos
        System.out.println("<<<<<</Mamiferos/>>>>>");
        System.out.println("Digite el nombre del mamifero");
        String nombreMamifero = lector.nextLine();
        System.out.println("Digite el habitat del mamifero: ");
        String habitatMamifero = lector.nextLine();
        System.out.println("Digite la alimentacion del mamifero: ");
        String alimentacionMamifero = lector.nextLine();
        System.out.println("Digite la reproduccion del mamifero: ");
        String reproduccionMamifero = lector.nextLine();
        //Inico de datos de los Insectos
        System.out.println("<<<<<</Incetos/>>>>>");
        
        System.out.println("Dijite el nombre del insecto");
        String nombreInsecto = lector.nextLine();
        System.out.println("Dijite el habitat del insecto");
        String habitatInsecto = lector.nextLine();
        System.out.println("Dijite la alimentacion del insecto");
        String alimentacionInsecto = lector.nextLine();
        System.out.println("Dijite la reproducion del insecto");
        String reproduccionInsecto = lector.nextLine();
        //lista ave
        lista.insertarPrincipioNodo(nombreAve, habitatAve, alimentacionAve, reproduccionAve, tipoAve, 2, tipoAve);
        lista.mostrarNodos();
        //lista mamifero
        lista1.insertarPrincipioNodo(nombreMamifero, habitatMamifero, alimentacionMamifero, reproduccionMamifero, habitatMamifero, 0, alimentacionMamifero);
        lista1.mostrarNodos();
        //lista insecto
        lista2.insertarFinaloNodo(nombreInsecto, habitatInsecto, alimentacionInsecto, reproduccionInsecto, habitatInsecto, 0, alimentacionInsecto);
        lista2.mostrarNodos();
    }
}
