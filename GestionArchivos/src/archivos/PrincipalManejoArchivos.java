/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package archivos;
import java.util.*;


/**
 *
 * @author Erendira Luna
 */
public class PrincipalManejoArchivos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
   Scanner teclado = new Scanner(System.in);
   int salir=1;
   manejoArchivos objeto = new manejoArchivos();
   System.out.println("Elige la opción deseada: \n1.Crear Bitácora, \n2.Escribir en Bitacora, \n3. Leer Bitacora, \n4: Buscar y \n5: Salir ");
   while(salir!=5)
   {
       try{
           System.out.println("Elige una opcion: ");
           salir=teclado.nextInt();
           if(salir==1){
               objeto.archivoExiste();//Crea el archivo o valida si ya existe
   }
           if(salir==2){
               System.out.println("\nIngresa el nombre del Cliente");
               String nombreCliente= teclado.nextLine();
               System.out.println("\nIngresa la fecha de Nacimiento del Cliente");
               String fechaNac= teclado.nextLine();
               System.out.println("\nIngresa el saldo");
               double saldo= teclado.nextDouble();
               objeto.escribirArchivo(nombreCliente,fechaNac,saldo);
               
           }
           if(salir==3){
               objeto.mostrarRegistros();
           }
           if(salir==4){
               System.out.println("Ingresa el Cliente a buscar: ");
               String cust = teclado.nextLine();
               objeto.buscarRegistro(cust);
           }
    } catch(Exception ex){
        System.out.println(ex.getMessage());
        teclado.nextLine();
    }
    
}
    }
}