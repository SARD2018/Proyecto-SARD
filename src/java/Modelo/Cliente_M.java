package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Cliente_M {

    Conexion Conex = new Conexion();
    Connection BaseDatos = Conex.Conectando();
    PreparedStatement PreSta = null;
    ResultSet Reset = null;
    
    public ArrayList<GS_Cliente> Uno_Cliente (String ID){
        ArrayList<GS_Cliente> Tabla=new ArrayList<>();
        
        try {
            PreSta= BaseDatos.prepareStatement("call Uno_Cliente (?)");
            PreSta.setString(1, ID);
            Reset= PreSta.executeQuery();
            
            while (Reset.next()) {   
                GS_Cliente ing=new GS_Cliente(Reset.getString(1), Reset.getString(2), Reset.getString(3), Reset.getString(4), Reset.getString(5), Reset.getString(6), Reset.getString(7), Reset.getString(8), Reset.getString(9), Reset.getString(10),Reset.getString(11),Reset.getString(12),Reset.getString(13),Reset.getString(14));
                Tabla.add(ing);
            }
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e+" Error en Uno Cliente");
        }
        return Tabla;
    }
    
    
    public ArrayList<GS_Cliente> Todo_Cliente() {
        ArrayList<GS_Cliente> Todo_Cliente = new ArrayList<>();
        try {
            PreSta = BaseDatos.prepareStatement("call Todo_Cliente()");
            Reset = PreSta.executeQuery();
            while (Reset.next()){
                GS_Cliente GSS = new GS_Cliente(Reset.getString(1),Reset.getString(2),Reset.getString(3),Reset.getString(4),Reset.getString(5),Reset.getString(6),Reset.getString(7),Reset.getString(8),Reset.getString(9),Reset.getString(10),Reset.getString(11),Reset.getString(12),Reset.getString(13),Reset.getInt(14),Reset.getString(15));
                Todo_Cliente.add(GSS);
            }
            
        } catch (Exception e) {
        }
        
        return Todo_Cliente;
    
    }
    public void In_Cliente (GS_Cliente GS){
        try{
            PreSta=BaseDatos.prepareStatement("call In_Cliente (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            PreSta.setString(1, GS.getDocumento());
            PreSta.setString(2, GS.getTipo_Documento());
            PreSta.setString(3, GS.getLugar_Expedicion());
            PreSta.setString(4, GS.getNombre());
            PreSta.setString(5, GS.getApellido());
            PreSta.setString(6, GS.getGenero());
            PreSta.setString(7, GS.getFecha_Nacimiento());
            PreSta.setString(8, GS.getDireccion());
            PreSta.setString(9, GS.getBarrio());
            PreSta.setString(10, GS.getTelefono1());
            PreSta.setString(11, GS.getTelefono2());
            PreSta.setString(12, GS.getCorreo());
            PreSta.setString(13, GS.getOcupacion());
            PreSta.setString(14, GS.getFoto());
            PreSta.executeUpdate();
            JOptionPane.showMessageDialog(null,"DATOS INGRESADOS");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
        }
    }
    
    public int Act_Cliente (GS_Cliente GS){
         int Actualizar=0;
        try{
            PreSta=BaseDatos.prepareStatement("call A_Cliente(?,?,?,?,?,?,?,?)");
            PreSta.setString(1, GS.getDocumento());
            PreSta.setString(2, GS.getDireccion());
            PreSta.setString(3, GS.getBarrio());
            PreSta.setString(4, GS.getTelefono1());
            PreSta.setString(5, GS.getTelefono2());
            PreSta.setString(6, GS.getCorreo());
            PreSta.setString(7, GS.getOcupacion());
            PreSta.setString(8, GS.getFoto());
            Actualizar=PreSta.executeUpdate();
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
    }
        return Actualizar;
    }
      public void Login_Cliente (GS_Cliente GS){
        try{
            PreSta=BaseDatos.prepareStatement("call In_Login(?,?,?)");
            PreSta.setString(1, GS.getDocumento());
            PreSta.setString(2, GS.getDocumento());
            PreSta.setInt(3, 5);
            PreSta.executeUpdate();
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
        }
    }
      
    public void Eli_Cliente(GS_Cliente GS){
        try{
            PreSta=BaseDatos.prepareStatement(" call B_Cliente (?)");
            PreSta.setString(1,GS.getDocumento());
            PreSta.executeUpdate();
            JOptionPane.showMessageDialog(null, "Datos Borrados");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
        }
    }
    
}
