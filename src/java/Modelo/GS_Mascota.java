package Modelo;

public class GS_Mascota {
    private int Codigo;
    private String Tipo_Mascota;
    private String Nombre;
    private String Fecha_Nacimiento;
    private String Color;
    private String Raza;
    private String Sexo;
    private String Foto;    

    public GS_Mascota() {
    }

    public GS_Mascota(int Codigo, String Tipo_Mascota, String Nombre, String Fecha_Nacimiento, String Color, String Raza, String Sexo, String Foto) {
        this.Codigo = Codigo;
        this.Tipo_Mascota = Tipo_Mascota;
        this.Nombre = Nombre;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Color = Color;
        this.Raza = Raza;
        this.Sexo = Sexo;
        this.Foto = Foto;
    }
    
    public GS_Mascota(String Tipo_Mascota, String Nombre, String Fecha_Nacimiento, String Color, String Raza, String Sexo, String Foto) {
        this.Tipo_Mascota = Tipo_Mascota;
        this.Nombre = Nombre;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Color = Color;
        this.Raza = Raza;
        this.Sexo = Sexo;
        this.Foto = Foto;
    }

    public int getCodigo() {
        return Codigo;
    }

    public void setCodigo(int Codigo) {
        this.Codigo = Codigo;
    }
    
    
    public String getTipo_Mascota() {
        return Tipo_Mascota;
    }

    public void setTipo_Mascota(String Tipo_Mascota) {
        this.Tipo_Mascota = Tipo_Mascota;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getFecha_Nacimiento() {
        return Fecha_Nacimiento;
    }

    public void setFecha_Nacimiento(String Fecha_Nacimiento) {
        this.Fecha_Nacimiento = Fecha_Nacimiento;
    }

    public String getColor() {
        return Color;
    }

    public void setColor(String Color) {
        this.Color = Color;
    }

    public String getRaza() {
        return Raza;
    }

    public void setRaza(String Raza) {
        this.Raza = Raza;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public String getFoto() {
        return Foto;
    }

    public void setFoto(String Foto) {
        this.Foto = Foto;
    }
    
    
}
