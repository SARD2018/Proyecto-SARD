package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Cliente_M {

    Conexion Conex = new Conexion();
    Connection BaseDatos = Conex.Conectando();
    PreparedStatement PreSta = null;
    ResultSet Reset = null;
    
    public ArrayList<GS_Cliente> Todo_Cliente() {
        ArrayList<GS_Cliente> Todo_Cliente = new ArrayList<>();
        try {
            PreSta = BaseDatos.prepareStatement("call Todo_Cliente");
            Reset = PreSta.executeQuery();
            while (Reset.next()){
                GS_Cliente GSS = new GS_Cliente(Reset.getString(1),Reset.getString(2),Reset.getString(3),Reset.getString(4),Reset.getString(5),Reset.getString(6),Reset.getString(7),Reset.getString(8),Reset.getString(9),Reset.getInt(10),Reset.getString(11));
                Todo_Cliente.add(GSS);
            }
            
        } catch (Exception e) {
        }
        
        return Todo_Cliente;
    
    }
    
}
