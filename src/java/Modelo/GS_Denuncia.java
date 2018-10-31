
package Modelo;


public class GS_Denuncia {

    private int Codigo;
    private String Direccion;
    private String Descripcion;
    private String Evidencia;
    private String Fecha;

    public GS_Denuncia(int Codigo, String Direccion, String Descripcion, String Evidencia, String Fecha) {
        this.Codigo = Codigo;
        this.Direccion = Direccion;
        this.Descripcion = Descripcion;
        this.Evidencia = Evidencia;
        this.Fecha = Fecha;
    }

    public GS_Denuncia(int Codigo) {
        this.Codigo = Codigo;
    }

    public GS_Denuncia() {
    }
    
    public int getCodigo() {
        return Codigo;
    }

    public void setCodigo(int Codigo) {
        this.Codigo = Codigo;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getEvidencia() {
        return Evidencia;
    }

    public void setEvidencia(String Evidencia) {
        this.Evidencia = Evidencia;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }
    
}
