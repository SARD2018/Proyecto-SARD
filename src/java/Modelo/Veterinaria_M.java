
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;


public class Veterinaria_M {

    Conexion Conex = new Conexion();
    Connection BaseDatos = Conex.Conectando();
    PreparedStatement PreSta = null;
    ResultSet Reset = null;
    
    public ArrayList<GS_Veterinaria> Uno_Veterinaria (String ID){
        ArrayList<GS_Veterinaria> Tabla=new ArrayList<>();
        
        try {
            PreSta= BaseDatos.prepareStatement("call Uno_Veterinaria (?)");
            PreSta.setString(1, ID);
            Reset= PreSta.executeQuery();
            
            while (Reset.next()) {   
                GS_Veterinaria ing=new GS_Veterinaria(Reset.getString(1), Reset.getString(2), Reset.getString(3), Reset.getString(4), Reset.getString(5), Reset.getString(6), Reset.getString(7), Reset.getString(8),Reset.getString(9));
                Tabla.add(ing);
            }
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e+" Error en Uno Veterinaria");
        }
        return Tabla;
    }
    
     public void In_Veterinaria(GS_Veterinaria GS){
        try{
            PreSta=BaseDatos.prepareStatement("call In_Veterinaria (?,?,?,?,?,?,?,?,?)");
            PreSta.setString(1, GS.getNit());
            PreSta.setString(2, GS.getNombre());
            PreSta.setString(3, GS.getRepresentante());
            PreSta.setString(4, GS.getFecha_Fundacion());
            PreSta.setString(5, GS.getDireccion());
            PreSta.setString(6, GS.getBarrio());
            PreSta.setString(7, GS.getTelefono());
            PreSta.setString(8, GS.getCorreo());
            PreSta.setString(9, GS.getFoto());
            PreSta.executeUpdate();
            JOptionPane.showMessageDialog(null,"DATOS INGRESADOS");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
    }
    }
     
     
      public void Login_Veterinaria (GS_Veterinaria GS){
        try{
            PreSta=BaseDatos.prepareStatement("call In_Login(?,?,?)");
            PreSta.setString(1, GS.getNit());
            PreSta.setString(2, GS.getNit());
            PreSta.setInt(3, 4);
            PreSta.executeUpdate();
            JOptionPane.showMessageDialog(null,"DATOS INGRESADOS");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
        }
    }
     
     
    
    
}
