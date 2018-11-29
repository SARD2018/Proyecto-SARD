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
    
    public void In_Mascota (GS_Mascota GSM){
        try {
            PreSta = BaseDatos.prepareStatement("call In_Mascota(?,?,?,?,?,?,?)");
            PreSta.setString(1, GSM.getTipo_Mascota());
            PreSta.setString(2, GSM.getNombre());
            PreSta.setString(3, GSM.getFecha_Nacimiento());
            PreSta.setString(4, GSM.getColor());
            PreSta.setString(5, GSM.getRaza());
            PreSta.setString(6, GSM.getSexo());
            PreSta.setString(7, GSM.getFoto());
            PreSta.executeUpdate();
            JOptionPane.showMessageDialog(null,"Datos Ingresados Correctamente");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,e);
        }
    }
    
    public int A_Mascota (GS_Mascota GSM){
        int x=0;
        try {
            PreSta = BaseDatos.prepareStatement("call A_Mascota (?,?,?,?,?,?,?,?)");
            PreSta.setInt(1, GSM.getCodigo());
            PreSta.setString(2, GSM.getTipo_Mascota());
            PreSta.setString(3, GSM.getNombre());
            PreSta.setString(4, GSM.getFecha_Nacimiento());
            PreSta.setString(5, GSM.getColor());
            PreSta.setString(6, GSM.getRaza());
            PreSta.setString(7, GSM.getSexo());
            PreSta.setString(8, GSM.getFoto());
            JOptionPane.showMessageDialog(null, GSM.getSexo());
            x = PreSta.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        
        return x;
    }
    
    public int B_Mascota (GS_Mascota GSM){
        int x=0;
        try {
            PreSta = BaseDatos.prepareStatement("call B_Mascota (?)");
            PreSta.setInt(1, GSM.getCodigo());
            x = PreSta.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        
        return x;
    }
    
    public int CodigoMascota (){
        int Codigo=0;
        try {
            PreSta = BaseDatos.prepareStatement("Select max(Documento) from Mascota");
            Reset = PreSta.executeQuery();
            while (Reset.next()) {
                GS_Estado GSE = new GS_Estado(Reset.getInt(1));
                Codigo = GSE.getCodigo();
            }
        } catch (Exception e) {
        }
        return Codigo;
    }
    
    public ArrayList<GS_Mascota> Todo_Mascota() {
        ArrayList<GS_Mascota> Todo_Mascota = new ArrayList<>();
        try {
            PreSta = BaseDatos.prepareStatement("Call Todo_Mascota");
            Reset = PreSta.executeQuery();
            while (Reset.next()){
                GS_Mascota GSM = new GS_Mascota(Reset.getInt(1), Reset.getString(2), Reset.getString(3), Reset.getString(4), Reset.getString(5), Reset.getString(6), Reset.getString(7), Reset.getString(8));
                Todo_Mascota.add(GSM);
            }
            
        } catch (Exception e) {
        }
        return Todo_Mascota;
    }
    
     public ArrayList<GS_Mascota> FiltroMascota(String Dato) {
        ArrayList<GS_Mascota> Filtro_Mascota = new ArrayList<>();
        try {
            PreSta = BaseDatos.prepareStatement("Call Uno_Mascota("+Dato+")");
            Reset = PreSta.executeQuery();
            while (Reset.next()){
                GS_Mascota GSM = new GS_Mascota(Reset.getString(1), Reset.getString(2), Reset.getString(3), Reset.getString(4), Reset.getString(5), Reset.getString(6), Reset.getString(7));
                Filtro_Mascota.add(GSM);
            }
            
        } catch (Exception e) {
        }
        return Filtro_Mascota;
    }
    
    public int Codigo() {
        int codigo = 0;
        try {
            PreSta = BaseDatos.prepareStatement("select max(Documento) from Mascota");
            Reset = PreSta.executeQuery();
            while (Reset.next()){
                GS_Estado GSE = new GS_Estado(Reset.getInt(1));
                codigo = GSE.getCodigo();
            }
            
        } catch (Exception e) {
        }
        return codigo;
    }
    
}
