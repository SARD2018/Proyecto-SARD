
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;


public class Denuncias_M {

    Conexion Conex= new Conexion();
    Connection BaseDatos= Conex.Conectando();
    PreparedStatement PreSta=null;
    ResultSet Reset=null;
    
    public void InsertarDenuncias(GS_Denuncia GD){
        
        try {
            PreSta= BaseDatos.prepareStatement("call In_Denuncia(?,?,?,?,?)");
            PreSta.setString(1, GD.getDireccion());
            PreSta.setString(2, GD.getDescripcion());
            PreSta.setString(3, GD.getEvidencia());
            PreSta.setString(4, GD.getCorreo());
            PreSta.setString(5, GD.getFecha());
            PreSta.executeUpdate();
            JOptionPane.showMessageDialog(null, "Sus datos fueron ingresados");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error");
        }
    }
    public void InsertarDenunciasC(GS_Denuncia_Cliente GD){
        
        try {
            PreSta= BaseDatos.prepareStatement("call In_DenunciaC(?,?,?,?,?)");
            PreSta.setString(1, GD.getDireccion());
            PreSta.setString(2, GD.getDescripcion());
            PreSta.setString(3, GD.getEvidencia());
            PreSta.setString(4, GD.getDocumento());
            PreSta.setString(5, GD.getFecha());
            PreSta.executeUpdate();
            JOptionPane.showMessageDialog(null, "Sus datos fueron ingresados");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error Denuncias cliente");
        }
    }
    public ArrayList<GS_Denuncia> Tabla_Denuncias (){
        ArrayList<GS_Denuncia> Tabla=new ArrayList<>();
        
        try {
            PreSta= BaseDatos.prepareStatement("call Todo_Denuncias ()");
            Reset= PreSta.executeQuery();
            
            while (Reset.next()) {   
                GS_Denuncia ing=new GS_Denuncia(Reset.getInt(1), Reset.getString(2), Reset.getString(3), Reset.getString(4), Reset.getString(5), Reset.getString(6));
                Tabla.add(ing);
            }
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e+" Error en Todo Denuncia");
        }
        return Tabla;
    }
}
