/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package archivos;
import java.io.*;
import java.util.*;


/**
 *
 * @author Erendira Luna
 */
public class manejoArchivos {
    private Scanner leer;
    private String nombreCliente;
    private String fechaNac;
    private double saldo;
    File registro = new File ("bitacora.txt");

//declaramos un objeto para enviar los datos de la clase manejoArchivos
public manejoArchivos(){

}
//Método para crear la bitacora de saldos
public void archivoExiste()
{
    try
{
    if(registro.exists())
{
System.out.println("La bitacora de Saldos ya existe");
}//fin if
else
{
registro.createNewFile();
System.out.println("La bitacora ha sido creada");
}//fin else
}//fin try
catch(Exception ex){
System.out.println(ex.getMessage());
}//fin catch
}
//Método para escribir en el archivo
public void escribirArchivo(String cliente, String birthdate, double saldo2){
nombreCliente=cliente;
fechaNac=birthdate;
saldo=saldo2;
try
{
BufferedWriter Fescritura = new BufferedWriter (new OutputStreamWriter(new FileOutputStream(registro,true)));
Fescritura.write(nombreCliente+"    "+fechaNac+"    "+saldo+"   ");
Fescritura.write("\n");
System.out.println("El cliente ha sido insertado en la bitácora");
Fescritura.close();
}
catch(Exception ex)
{
System.out.println(ex.getMessage());
}
}
public void mostrarRegistros(){
try
{
FileReader fr= new FileReader("bitacora.txt");
BufferedReader br = new BufferedReader(fr);
String temp;
while((temp=br.readLine())!=null)
{
System.out.println(""+temp);
}
}catch(Exception ex)
{
System.out.println(ex.getMessage());
}
}
public void buscarRegistro(String customer){
    String nombreCustomer=customer;
    try{
        BufferedReader leerDato = new BufferedReader(new FileReader("bitacora.txt"));
        String linea=" ";
        while((linea=leerDato.readLine())!=null)
        {
            if (linea.indexOf(nombreCustomer)!=-1)
            {
                System.out.println("Se encontro el registro: "+linea);
            }
        }
        
    }catch(Exception ex){
        System.out.println(ex.getMessage());
    }
}
}