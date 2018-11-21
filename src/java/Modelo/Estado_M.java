package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class Estado_M {
    Conexion Conex = new Conexion();
    Connection BaseDatos = Conex.Conectando();
    PreparedStatement PreSta = null;
    ResultSet Reset = null;
    
    public void In_Estado (GS_Estado GSE){
        try {
            PreSta = BaseDatos.prepareStatement("call In_RegEstado(?,?,?)");
            PreSta.setInt(1, GSE.getEstado());
            PreSta.setInt(2, GSE.getCodigo());
            PreSta.setString(3, GSE.getDocumento());
            PreSta.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public int Existente (GS_Estado GSE, GS_Mascota GSM) {
        int res=0;
        try {
            PreSta = BaseDatos.prepareStatement("call Existente (?,?,?,?)");
            PreSta.setString(1, GSM.getNombre());
            PreSta.setString(2, GSE.getDocumento());
            PreSta.setString(3, GSM.getFecha_Nacimiento());
            PreSta.setString(4, GSM.getTipo_Mascota());
            Reset = PreSta.executeQuery();
            if (Reset.next()){
                res = 1;
            }
        }catch (Exception e){
            
        }
        return res;
    }
    
}
