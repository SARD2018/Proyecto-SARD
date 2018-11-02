package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Mascota_M {
    Conexion Conex = new Conexion();
    Connection BaseDatos = Conex.Conectando();
    PreparedStatement PreSta = null;
    ResultSet Reset = null;
    
    public ArrayList<GS_Mascota> Todo_Mascota() {
        ArrayList<GS_Mascota> Todo_Mascota = new ArrayList<>();
        try {
            PreSta = BaseDatos.prepareStatement("Call Todo_Mascota");
            Reset = PreSta.executeQuery();
            while (Reset.next()){
                GS_Mascota GSM = new GS_Mascota(Reset.getInt(1), Reset.getString(2), Reset.getString(3), Reset.getString(4), Reset.getString(5), Reset.getString(6), Reset.getString(7), Reset.getString(8),Reset.getString(9));
                Todo_Mascota.add(GSM);
            }
            
        } catch (Exception e) {
        }
        return Todo_Mascota;
    }
    
    public int Codigo() {
        int codigo = 0;
        try {
            PreSta = BaseDatos.prepareStatement("select max(Codigo) from Mascota");
            Reset = PreSta.executeQuery();
            while (Reset.next()){
                GS_Mascota GSM = new GS_Mascota(Reset.getInt(1));
                codigo = GSM.getCodigo();
            }
            
        } catch (Exception e) {
        }
        return codigo;
    }

    
}
