
package Modelo;

public class GS_Login {
  
    private String Usuario;
    private String Clave;
    private int Rol_Ingreso;

    public GS_Login(String Usuario, String Clave, int Rol_Ingreso) {
        this.Usuario = Usuario;
        this.Clave = Clave;
        this.Rol_Ingreso = Rol_Ingreso;
    }

    public GS_Login() {
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getClave() {
        return Clave;
    }

    public void setClave(String Clave) {
        this.Clave = Clave;
    }

    public int getRol_Ingreso() {
        return Rol_Ingreso;
    }

    public void setRol_Ingreso(int Rol_Ingreso) {
        this.Rol_Ingreso = Rol_Ingreso;
    }
    
    
}
