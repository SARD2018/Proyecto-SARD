package Modelo;

public class GS_Postulaciones {
    private int DocumentoMascota;
    private String Tipo_Mascota;
    private String NombreMascota;
    private String FotoMascota;
    private String DocumentoPostulado;
    private String NombrePostulado;
    private String ApellidoPostulado;
    private String TelefonoPostulado;
    private String CorreoPostulado;

    public GS_Postulaciones() {
    }

    public GS_Postulaciones(int DocumentoMascota, String Tipo_Mascota, String NombreMascota, String FotoMascota, String DocumentoPostulado, String NombrePostulado, String ApellidoPostulado, String TelefonoPostulado, String CorreoPostulado) {
        this.DocumentoMascota = DocumentoMascota;
        this.Tipo_Mascota = Tipo_Mascota;
        this.NombreMascota = NombreMascota;
        this.FotoMascota = FotoMascota;
        this.DocumentoPostulado = DocumentoPostulado;
        this.NombrePostulado = NombrePostulado;
        this.ApellidoPostulado = ApellidoPostulado;
        this.TelefonoPostulado = TelefonoPostulado;
        this.CorreoPostulado = CorreoPostulado;
    }

    public int getDocumentoMascota() {
        return DocumentoMascota;
    }

    public void setDocumentoMascota(int DocumentoMascota) {
        this.DocumentoMascota = DocumentoMascota;
    }

    public String getTipo_Mascota() {
        return Tipo_Mascota;
    }

    public void setTipo_Mascota(String Tipo_Mascota) {
        this.Tipo_Mascota = Tipo_Mascota;
    }

    public String getNombreMascota() {
        return NombreMascota;
    }

    public void setNombreMascota(String NombreMascota) {
        this.NombreMascota = NombreMascota;
    }

    public String getFotoMascota() {
        return FotoMascota;
    }

    public void setFotoMascota(String FotoMascota) {
        this.FotoMascota = FotoMascota;
    }

    public String getDocumentoPostulado() {
        return DocumentoPostulado;
    }

    public void setDocumentoPostulado(String DocumentoPostulado) {
        this.DocumentoPostulado = DocumentoPostulado;
    }

    public String getNombrePostulado() {
        return NombrePostulado;
    }

    public void setNombrePostulado(String NombrePostulado) {
        this.NombrePostulado = NombrePostulado;
    }

    public String getApellidoPostulado() {
        return ApellidoPostulado;
    }

    public void setApellidoPostulado(String ApellidoPostulado) {
        this.ApellidoPostulado = ApellidoPostulado;
    }

    public String getTelefonoPostulado() {
        return TelefonoPostulado;
    }

    public void setTelefonoPostulado(String TelefonoPostulado) {
        this.TelefonoPostulado = TelefonoPostulado;
    }

    public String getCorreoPostulado() {
        return CorreoPostulado;
    }

    public void setCorreoPostulado(String CorreoPostulado) {
        this.CorreoPostulado = CorreoPostulado;
    }
    
    
    
}
