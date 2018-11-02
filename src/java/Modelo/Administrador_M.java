
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;


public class Administrador_M {

    Conexion Conex=new Conexion();
    Connection BaseDatos= Conex.Conectando();
    PreparedStatement PreSta=null;
    ResultSet Reset=null;
    
    public ArrayList<GS_Administrador> Uno_Admin (String ID){
        ArrayList<GS_Administrador> Tabla=new ArrayList<>();
        
        try {
            PreSta= BaseDatos.prepareStatement("call Uno_Admin (?)");
            PreSta.setString(1, ID);
            Reset= PreSta.executeQuery();
            
            while (Reset.next()) {   
                GS_Administrador ing=new GS_Administrador(Reset.getString(1), Reset.getString(2), Reset.getString(3), Reset.getString(4), Reset.getString(5), Reset.getString(6), Reset.getString(7), Reset.getString(8), Reset.getString(9), Reset.getString(10));
                Tabla.add(ing);
            }
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e+" Error en Uno Admin");
        }
        return Tabla;
    }
}
