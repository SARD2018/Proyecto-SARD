
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;


public class Conexion {

    Connection BaseDatos=null;
    
    public Connection Conectando(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            BaseDatos= DriverManager.getConnection("jdbc:mysql://localhost/SARD","root","");
        } 
        catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error en la conexion!");
        }
        return BaseDatos;
    }
}
