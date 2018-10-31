
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Registo {
    
    Conexion Conex=new Conexion();
    Connection BaseDatos= Conex.Conectando();
    PreparedStatement PreSta=null;
    ResultSet Reset=null;
    
    public void Registro_Administrador (GS_Administrador GS){
        try{
            PreSta=BaseDatos.prepareStatement("call In_Admin (?,?,?,?,?,?,?,?,?,?)");
            PreSta.setString(1, GS.getDocumento());
            PreSta.setString(2, GS.getTipo_Documento());
            PreSta.setString(3, GS.getNombre());
            PreSta.setString(4, GS.getApellido());
            PreSta.setString(5, GS.getGenero());
            PreSta.setString(6, GS.getFecha_Nacimiento());
            PreSta.setString(7, GS.getDireccion());
            PreSta.setString(8, GS.getTelefono());
            PreSta.setString(9, GS.getCorreo());
            PreSta.setString(10, GS.getFoto());
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    
    public void Registro_Salud_Ambiente_Cliente (GS_Cliente GS){
        try{
            PreSta=BaseDatos.prepareStatement("call In_Cliente_Admin (?,?,?,?,?,?,?,?,?,?,?)");
            PreSta.setString(1, GS.getDocumento());
            PreSta.setString(2, GS.getTipo_Documento());
            PreSta.setString(3, GS.getNombre());
            PreSta.setString(4, GS.getApellido());
            PreSta.setString(5, GS.getGenero());
            PreSta.setString(6, GS.getFecha_Nacimiento());
            PreSta.setString(7, GS.getDireccion());
            PreSta.setString(8, GS.getTelefono());
            PreSta.setString(9, GS.getCorreo());
            PreSta.setInt(9, GS.getRol());
            PreSta.setString(10, GS.getFoto());
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public void Registro_Veterinaria (GS_Veterinaria GS){
        try{
            PreSta=BaseDatos.prepareStatement("call In_Veterinaria (?,?,?,?,?,?,?,?)");
            PreSta.setString(1, GS.getNit());
            PreSta.setString(2, GS.getNombre());
            PreSta.setString(3, GS.getRepresentante());
            PreSta.setString(4, GS.getFecha_Fundacion());
            PreSta.setString(5, GS.getDireccion());
            PreSta.setString(6, GS.getTelefono());
            PreSta.setString(7, GS.getCorreo());
            PreSta.setString(8, GS.getFoto());
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public void Registro_Cliente (GS_Cliente GS){
        try{
            PreSta=BaseDatos.prepareStatement("call In_Cliente (?,?,?,?,?,?,?,?,?,?)");
            PreSta.setString(1, GS.getDocumento());
            PreSta.setString(2, GS.getTipo_Documento());
            PreSta.setString(3, GS.getNombre());
            PreSta.setString(4, GS.getApellido());
            PreSta.setString(5, GS.getGenero());
            PreSta.setString(6, GS.getFecha_Nacimiento());
            PreSta.setString(7, GS.getDireccion());
            PreSta.setString(8, GS.getTelefono());
            PreSta.setString(9, GS.getCorreo());
            PreSta.setString(10, GS.getFoto());
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    
}
