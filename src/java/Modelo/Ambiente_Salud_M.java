
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author SENA
 */
public class Ambiente_Salud_M {
    Conexion Conex=new Conexion();
    Connection BaseDatos= Conex.Conectando();
    PreparedStatement PreSta=null;
    ResultSet Reset=null;
    
    public void In_Ambiente_Salud (GS_Ambiente_Salud GS){
        try{
            PreSta=BaseDatos.prepareStatement("call In_Cliente_Admin(?,?,?,?,?,?,?,?,?,?,?)");
            PreSta.setString(1, GS.getDocumento());
            PreSta.setString(2, GS.getTipo_Documento());
            PreSta.setString(3, GS.getNombre());
            PreSta.setString(4, GS.getApellido());
            PreSta.setString(5, GS.getGenero());
            PreSta.setString(6, GS.getFecha_Nacimiento());
            PreSta.setString(7, GS.getDireccion());
            PreSta.setString(8, GS.getTelefono());
            PreSta.setString(9, GS.getCorreo());
            PreSta.setInt(10, GS.getRol());
            PreSta.setString(11, GS.getFoto());
            
            PreSta.executeUpdate();
            JOptionPane.showMessageDialog(null,"DATOS INGRESADOS");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
    }
    }
}
