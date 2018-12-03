
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;


public class Eventos_M {

    Conexion Conex=new Conexion();
    Connection BaseDatos= Conex.Conectando();
    PreparedStatement PreSta=null;
    ResultSet Reset=null;
    
    public void In_Evento (GS_Evento GS){
        try {
            PreSta= BaseDatos.prepareStatement("call In_Eventos(?,?,?,?,?)");
            PreSta.setString(1,GS.getNombre());
            PreSta.setString(2,GS.getTipo());
            PreSta.setString(3,GS.getFecha());
            PreSta.setString(4,GS.getDescripcion());
            PreSta.setString(5,GS.getFoto());
            PreSta.executeUpdate();
            JOptionPane.showMessageDialog(null, "Sus datos fueron ingresados");
        } 
        catch (Exception e) {
            JOptionPane.showMessageDialog(null, e+"Error En Eventos");
        }
    }
    public ArrayList<GS_Evento> Todo_Evento() {
        ArrayList<GS_Evento> Todo_Evento = new ArrayList<>();
        try {
            PreSta = BaseDatos.prepareStatement("call Todo_Eventos()");
            Reset = PreSta.executeQuery();
            while (Reset.next()){
                GS_Evento GSS = new GS_Evento(Reset.getInt(1),Reset.getString(2),Reset.getString(3),Reset.getString(4),Reset.getString(5),Reset.getString(6));
                Todo_Evento.add(GSS);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error en todo eventos");
        }
        
        return Todo_Evento;
    
    }
}
