
package Modelo;

import Controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;




public class Encuesta_M {
    Conexion Conex= new Conexion();
    Connection BaseDatos= Conex.Conectando();
    PreparedStatement PreSta=null;
    ResultSet Reset=null;
    
    public ArrayList<GS_Encuesta> Preguntas (){
        ArrayList<GS_Encuesta> Encuesta=new ArrayList<>();
        
        try {
            PreSta= BaseDatos.prepareStatement("call Preguntas()");
            Reset= PreSta.executeQuery();
            
            while (Reset.next()) {   
                GS_Encuesta GS = new GS_Encuesta(Reset.getString(1));
                Encuesta.add(GS);
            }
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return Encuesta;
    }
}
