
package Modelo;


public class GS_Evento {

    private String Codigo;
    private String Nombre;
    private String Tipo;
    private String Fecha;
    private String Descripcion;
    private String Foto;

    public GS_Evento(String Codigo, String Nombre, String Tipo, String Fecha, String Descripcion, String Foto) {
        this.Codigo = Codigo;
        this.Nombre = Nombre;
        this.Tipo = Tipo;
        this.Fecha = Fecha;
        this.Descripcion = Descripcion;
        this.Foto = Foto;
    }

    public GS_Evento(String Codigo) {
        this.Codigo = Codigo;
    }

    public GS_Evento() {
    }

    public String getCodigo() {
        return Codigo;
    }

    public void setCodigo(String Codigo) {
        this.Codigo = Codigo;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getFoto() {
        return Foto;
    }

    public void setFoto(String Foto) {
        this.Foto = Foto;
    }    
}
