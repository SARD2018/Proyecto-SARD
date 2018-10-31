
package Modelo;

import Controlador.Conexion;
import Modelo.GS_Login;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Login_M {
  
    Conexion Conex=new Conexion();
    Connection BaseDatos= Conex.Conectando();
    PreparedStatement PreSta=null;
    ResultSet Reset=null;
    private int Rol;
    
    public ArrayList<GS_Login> Validacion (GS_Login GS){
        ArrayList<GS_Login> Validacion =new ArrayList<>();
        try{
            PreSta=BaseDatos.prepareStatement("call  C_Usu_Clav (?,?)");
            PreSta.setString(1,GS.getUsuario());
            PreSta.setString(1,GS.getClave());
            Reset=PreSta.executeQuery();
            while (Reset.next()) {                
                GS_Login GSS=new GS_Login(Reset.getString(1),Reset.getString(2),Reset.getInt(3));   
                Validacion.add(GSS);
                Rol=Reset.getInt(3);
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
        return Validacion;
    }
    
       public String Nombre(GS_Login GS){
           String Nombre=null;
        try{
        PreSta=BaseDatos.prepareStatement("call  C_Nombre_Admin (?,?)");
        PreSta.setString(0,GS.getUsuario());
        PreSta.setInt(1, Rol);
        Reset=PreSta.executeQuery();
        while (Reset.next()){
            Nombre=Reset.getString(1)+" "+Reset.getString(2);
        }
        }
        catch (Exception e){
                
        }
        return Nombre;
    }
            
}
