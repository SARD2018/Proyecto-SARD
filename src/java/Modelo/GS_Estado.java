package Modelo;

public class GS_Estado {
    private int Codigo,Estado;
    private String Documento;

    public GS_Estado() {
    }

    public GS_Estado(int Codigo) {
        this.Codigo = Codigo;
    }

    public GS_Estado(int Codigo, int Estado, String Documento) {
        this.Codigo = Codigo;
        this.Estado = Estado;
        this.Documento = Documento;
    }

    public int getCodigo() {
        return Codigo;
    }

    public void setCodigo(int Codigo) {
        this.Codigo = Codigo;
    }

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }

    public String getDocumento() {
        return Documento;
    }

    public void setDocumento(String Documento) {
        this.Documento = Documento;
    }
    
    
}
