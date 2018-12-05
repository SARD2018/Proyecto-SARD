package Modelo;


public class GS_Cliente {
    
   private String Documento;
   private String Tipo_Documento;
   private String Lugar_Expedicion;
   private String Nombre;
   private String Apellido;
   private String Genero;
   private String Fecha_Nacimiento;
   private String Direccion;
   private String Barrio;
   private String Telefono1;
   private String Telefono2;
   private String Correo;
   private String Ocupacion;
   private int Rol ;
   private String Foto;

    public GS_Cliente(String Documento, String Tipo_Documento, String Lugar_Expedicion, String Nombre, String Apellido, String Genero, String Fecha_Nacimiento, String Direccion, String Barrio, String Telefono1, String Telefono2, String Correo, String Ocupacion, int Rol, String Foto) {
        this.Documento = Documento;
        this.Tipo_Documento = Tipo_Documento;
        this.Lugar_Expedicion = Lugar_Expedicion;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Genero = Genero;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Direccion = Direccion;
        this.Barrio = Barrio;
        this.Telefono1 = Telefono1;
        this.Telefono2 = Telefono2;
        this.Correo = Correo;
        this.Ocupacion = Ocupacion;
        this.Rol = Rol;
        this.Foto = Foto;
    }

    public GS_Cliente(String Documento, String Tipo_Documento, String Lugar_Expedicion, String Nombre, String Apellido, String Genero, String Fecha_Nacimiento, String Direccion, String Barrio, String Telefono1, String Telefono2, String Correo, String Ocupacion, String Foto) {
        this.Documento = Documento;
        this.Tipo_Documento = Tipo_Documento;
        this.Lugar_Expedicion = Lugar_Expedicion;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Genero = Genero;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Direccion = Direccion;
        this.Barrio = Barrio;
        this.Telefono1 = Telefono1;
        this.Telefono2 = Telefono2;
        this.Correo = Correo;
        this.Ocupacion = Ocupacion;
        this.Foto = Foto;
    }

    public GS_Cliente(String Documento, String Direccion, String Barrio, String Telefono1, String Telefono2, String Correo, String Ocupacion, String Foto) {
        this.Documento = Documento;
        this.Direccion = Direccion;
        this.Barrio = Barrio;
        this.Telefono1 = Telefono1;
        this.Telefono2 = Telefono2;
        this.Correo = Correo;
        this.Ocupacion = Ocupacion;
        this.Foto = Foto;
    }

    public GS_Cliente(String Documento) {
        this.Documento = Documento;
    }
    

    public GS_Cliente() {
    }

    public String getDocumento() {
        return Documento;
    }

    public void setDocumento(String Documento) {
        this.Documento = Documento;
    }

    public String getTipo_Documento() {
        return Tipo_Documento;
    }

    public void setTipo_Documento(String Tipo_Documento) {
        this.Tipo_Documento = Tipo_Documento;
    }

    public String getLugar_Expedicion() {
        return Lugar_Expedicion;
    }

    public void setLugar_Expedicion(String Lugar_Expedicion) {
        this.Lugar_Expedicion = Lugar_Expedicion;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getGenero() {
        return Genero;
    }

    public void setGenero(String Genero) {
        this.Genero = Genero;
    }

    public String getFecha_Nacimiento() {
        return Fecha_Nacimiento;
    }

    public void setFecha_Nacimiento(String Fecha_Nacimiento) {
        this.Fecha_Nacimiento = Fecha_Nacimiento;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getBarrio() {
        return Barrio;
    }

    public void setBarrio(String Barrio) {
        this.Barrio = Barrio;
    }

    public String getTelefono1() {
        return Telefono1;
    }

    public void setTelefono1(String Telefono1) {
        this.Telefono1 = Telefono1;
    }

    public String getTelefono2() {
        return Telefono2;
    }

    public void setTelefono2(String Telefono2) {
        this.Telefono2 = Telefono2;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getOcupacion() {
        return Ocupacion;
    }

    public void setOcupacion(String Ocupacion) {
        this.Ocupacion = Ocupacion;
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
