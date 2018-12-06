
package Modelo;


public class GS_Encuesta {

private int Codigo;
private String Pregunta;
private String Respuesta;
private String Cliente;

    public GS_Encuesta(int Codigo, String Pregunta, String Respuesta, String Cliente) {
        this.Codigo = Codigo;
        this.Pregunta = Pregunta;
        this.Respuesta = Respuesta;
        this.Cliente = Cliente;
    }

    public GS_Encuesta() {
    }

    public GS_Encuesta(String Pregunta) {
        this.Pregunta = Pregunta;
    }

    public GS_Encuesta(int Codigo) {
        this.Codigo = Codigo;
    }

    public int getCodigo() {
        return Codigo;
    }

    public void setCodigo(int Codigo) {
        this.Codigo = Codigo;
    }

    public String getPregunta() {
        return Pregunta;
    }

    public void setPregunta(String Pregunta) {
        this.Pregunta = Pregunta;
    }

    public String getRespuesta() {
        return Respuesta;
    }

    public void setRespuesta(String Respuesta) {
        this.Respuesta = Respuesta;
    }

    public String getCliente() {
        return Cliente;
    }

    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }

    

}
