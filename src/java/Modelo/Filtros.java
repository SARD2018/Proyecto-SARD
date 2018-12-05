
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class Filtros {
    
    
    Conexion Conex=new Conexion();
    Connection BaseDatos= Conex.Conectando();
    PreparedStatement PreSta=null;
    ResultSet Reset=null;
    
   public ArrayList<GS_Cliente>Filtro_Cliente(GS_Cliente GS){
       ArrayList<GS_Cliente>arreglo=new ArrayList<>();
       
       try{
           PreSta=BaseDatos.prepareCall("select * Cliente where Documento like '"+GS.getDocumento()+"%' || Tipo_Documento like '"+GS.getTipo_Documento()+"%' || Nombre like '"+GS.getNombre()+"%' || Apellido like '"+GS.getApellido()+"%' || Genero like '"+GS.getGenero()+"%' || Fecha_Nacimiento like '"+GS.getFecha_Nacimiento()+"%' || Direccion like '"+GS.getDireccion()+"%' || Telefono1 like '"+GS.getTelefono1()+"%' || Telefono2 like '"+GS.getTelefono2()+"%'|| Correo like '"+GS.getCorreo()+"%' and Rol=5");
           Reset=PreSta.executeQuery();
           
           while (Reset.next()) {               
               GS_Cliente GS_C=new GS_Cliente(Reset.getString(1),Reset.getString(2),Reset.getString(3),Reset.getString(4),Reset.getString(5),Reset.getString(6),Reset.getString(7),Reset.getString(8),Reset.getString(9),Reset.getString(10),Reset.getString(11),Reset.getString(12),Reset.getString(13),Reset.getString(14));
               arreglo.add(GS_C);
           }
       }
       catch(Exception e){
           System.out.print(e);
       }
       return arreglo;
   }
    public ArrayList<GS_Ambiente_Salud>Filtro_Salud(GS_Ambiente_Salud GS){
       ArrayList<GS_Ambiente_Salud>arreglo=new ArrayList<>();
       
       try{
           PreSta=BaseDatos.prepareCall("select * Cliente where Documento like '"+GS.getDocumento()+"%' || Tipo_Documento like '"+GS.getTipo_Documento()+"%' || Nombre like '"+GS.getNombre()+"%' || Apellido like '"+GS.getApellido()+"%' || Genero like '"+GS.getGenero()+"%' || Fecha_Nacimiento like '"+GS.getFecha_Nacimiento()+"%' || Direccion like '"+GS.getDireccion()+"%' || Telefono like '"+GS.getTelefono()+"%' || Correo like '"+GS.getCorreo()+"%' and Rol=3");
           Reset=PreSta.executeQuery();
           
           while (Reset.next()) {               
               GS_Ambiente_Salud GS_AS=new GS_Ambiente_Salud (Reset.getString(1),Reset.getString(2),Reset.getString(3),Reset.getString(4),Reset.getString(5),Reset.getString(6),Reset.getString(7),Reset.getString(8),Reset.getString(9),Reset.getString(10));
               arreglo.add(GS_AS);
           }
       }
       catch(Exception e){
           System.out.print(e);
       }
       return arreglo;
   }
    /*
    public ArrayList<GS_Cliente>Filtro_Ambiente(GS_Cliente GS){
       ArrayList<GS_Cliente>arreglo=new ArrayList<>();
       
       try{
           PreSta=BaseDatos.prepareCall("select * Cliente where Documento like '"+GS.getDocumento()+"%' || Tipo_Documento like '"+GS.getTipo_Documento()+"%' || Nombre like '"+GS.getNombre()+"%' || Apellido like '"+GS.getApellido()+"%' || Genero like '"+GS.getGenero()+"%' || Fecha_Nacimiento like '"+GS.getFecha_Nacimiento()+"%' || Direccion like '"+GS.getDireccion()+"%' || Telefono like '"+GS.getTelefono()+"%' || Correo like '"+GS.getCorreo()+"%' and Rol=2");
           Reset=PreSta.executeQuery();
           
           while (Reset.next()) {               
               GS_Cliente GS_C=new GS_Cliente(Reset.getString(1),Reset.getString(2),Reset.getString(3),Reset.getString(4),Reset.getString(5),Reset.getString(6),Reset.getString(7),Reset.getString(8),Reset.getString(9),Reset.getString(10));
               arreglo.add(GS_C);
           }
       }
       catch(Exception e){
           System.out.print(e);
       }
       return arreglo;
   }
   /*
    public ArrayList<GS_Veterinaria>Filtro_Veterinaria(GS_Veterinaria GS){
       ArrayList<GS_Veterinaria>arreglo=new ArrayList<>();
       
       try{
           PreSta=BaseDatos.prepareStatement("select Nit,Nombre,Representante,Fecha_Fundacion, Direccion,Telefono,Correo,Foto from Veterinaria where Nit like '"+GS.getNit()+"%' || Nombre like '"+GS.getNombre()+"%' || Representante like '"+GS.getRepresentante()+"%' || Fecha_Fundacion like '"+GS.getFecha_Fundacion()+"%' || Direccion like '"+GS.getDireccion()+"%' || Telefono like '"+GS.getTelefono()+"%' || Correo like '"+GS.getCorreo()+"%' and Rol=4 ");
           Reset=PreSta.executeQuery();
           
           while (Reset.next()) {   
               GS_Veterinaria GS_V=new GS_Veterinaria(Reset.getString(1),Reset.getString(2),Reset.getString(3),Reset.getString(4),Reset.getString(5),Reset.getString(6),Reset.getString(7),Reset.getString(8));
               arreglo.add(GS_V);
           }
       }
       catch(Exception e){
           System.out.print(e);
       }
       return arreglo;
   }
*/
}
