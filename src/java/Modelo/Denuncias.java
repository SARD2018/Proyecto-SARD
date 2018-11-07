
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;


public class Denuncias {

    Conexion Conex= new Conexion();
    Connection BaseDatos= Conex.Conectando();
    PreparedStatement PreSta=null;
    
    public void InsertarDenuncias(GS_Denuncia GD){
        
        try {
            PreSta= BaseDatos.prepareStatement("call In_Denuncia(?,?,?,?)");
            PreSta.setString(1, GD.getDireccion());
            PreSta.setString(2, GD.getDescripcion());
            PreSta.setString(3, GD.getEvidencia());
            PreSta.setString(4, GD.getFecha());
            PreSta.executeUpdate();
            JOptionPane.showMessageDialog(null, "Sus datos fueron ingresados");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error en el cocoroto");
        }
    }
}
