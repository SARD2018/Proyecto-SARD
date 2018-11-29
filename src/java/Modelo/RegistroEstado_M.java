package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class RegistroEstado_M {
    Conexion Conex = new Conexion();
    Connection BaseDatos = Conex.Conectando();
    PreparedStatement PreSta = null;
    ResultSet Reset = null;
    
    public ArrayList<GS_Postulaciones> MascotasPostuladas() {
        ArrayList<GS_Postulaciones> MascotaDisponibles = new ArrayList<>();
        try {
            PreSta = BaseDatos.prepareStatement("Call Postulaciones()");
            Reset = PreSta.executeQuery();
            while (Reset.next()){
                GS_Postulaciones GSP = new GS_Postulaciones(Reset.getInt(1), Reset.getString(2), Reset.getString(3), Reset.getString(4), Reset.getString(5), Reset.getString(6), Reset.getString(7), Reset.getString(8), Reset.getString(9));
                MascotaDisponibles.add(GSP);
            }
        } catch (Exception e) {
        }
        return MascotaDisponibles;
    }
    
    public ArrayList<GS_Mascota> Disponibles(){
        ArrayList<GS_Mascota> Disponible = new ArrayList<>();
        try {
            PreSta = BaseDatos.prepareStatement("Call Mas_Disponibles");
            Reset = PreSta.executeQuery();
            while (Reset.next()){
                GS_Mascota GSM = new GS_Mascota(Reset.getInt(1), Reset.getString(2), Reset.getString(3), Reset.getString(4), Reset.getString(5), Reset.getString(6), Reset.getString(7), Reset.getString(8));
                Disponible.add(GSM);
            }
        } catch (Exception e) {
        }
        return Disponible;
    }
    
}
