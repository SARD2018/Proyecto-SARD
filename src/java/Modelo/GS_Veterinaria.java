
package Modelo;

public class GS_Veterinaria {
    
    private String Nit;
    private String Nombre;
    private String Representante;
    private String Fecha_Fundacion;
    private String Direccion;
    private String Telefono;
    private String Correo;
    private int Rol;
    private String Foto;

    public GS_Veterinaria(String Nit, String Nombre, String Representante, String Fecha_Fundacion, String Direccion, String Telefono, String Correo, int Rol, String Foto) {
        this.Nit = Nit;
        this.Nombre = Nombre;
        this.Representante = Representante;
        this.Fecha_Fundacion = Fecha_Fundacion;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Correo = Correo;
        this.Rol = Rol;
        this.Foto = Foto;
    }

    public GS_Veterinaria(String Nit, String Nombre, String Representante, String Fecha_Fundacion, String Direccion, String Telefono, String Correo, String Foto) {
        this.Nit = Nit;
        this.Nombre = Nombre;
        this.Representante = Representante;
        this.Fecha_Fundacion = Fecha_Fundacion;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Correo = Correo;
        this.Foto = Foto;
    }

    
    public GS_Veterinaria() {
    }

    public String getNit() {
        return Nit;
    }

    public void setNit(String Nit) {
        this.Nit = Nit;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getRepresentante() {
        return Representante;
    }

    public void setRepresentante(String Representante) {
        this.Representante = Representante;
    }

    public String getFecha_Fundacion() {
        return Fecha_Fundacion;
    }

    public void setFecha_Fundacion(String Fecha_Nacimiento) {
        this.Fecha_Fundacion = Fecha_Nacimiento;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public int getRol() {
        return Rol;
    }

    public void setRol(int Rol) {
        this.Rol = Rol;
    }

    public String getFoto() {
        return Foto;
    }

    public void setFoto(String Foto) {
        this.Foto = Foto;
    }
    
    
    
    
    
}
