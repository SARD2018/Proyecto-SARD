
package Controlador;

import Modelo.Administrador_M;
import Modelo.Cliente_M;
import Modelo.GS_Administrador;
import Modelo.GS_Cliente;
import Modelo.GS_Mascota;
import Modelo.Mascota_M;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

/**
 *
 * @author Yefrin Pacheco
 */
@WebServlet(name = "Servlet_Administrador", urlPatterns = {"/Servlet_Administrador"})
@MultipartConfig
public class Servlet_Administrador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        if(request.getParameter("Valor_A").equalsIgnoreCase("In_Admin")){
            JOptionPane.showMessageDialog(null,"entra if");
            Insertar_Admin(request, response);
        }
        if(request.getParameter("Valor_A").equalsIgnoreCase("Act_Admin")){
            JOptionPane.showMessageDialog(null,"entra if");
            Actualizar_Admin(request, response);
        }
    }
   
    protected void Insertar_Admin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        JOptionPane.showMessageDialog(null, "entra metodo");
        String Documento,Tipo,Nombre,Apellido,Genero,Fecha,Direccion,Telefono,Correo;
        Documento = request.getParameter("Documento_A");
        Tipo= request.getParameter("Tipo_A");
        Nombre = request.getParameter("Nombre_A");
        Apellido = request.getParameter("Apellido_A");
        Genero = request.getParameter("Genero_A");
        Fecha = request.getParameter("Fecha_A");
        Direccion = request.getParameter("Direccion_A");
        Telefono = request.getParameter("Telefono_A");
        Correo = request.getParameter("Correo_A");
        /*
        Part Foto = request.getPart("Foto_A");
        String Nombre_F = Foto.getSubmittedFileName();
        String Foto_Name = Nombre+"_"+Nombre_F;
        
        String url = "G:\\Nueva Carpeta (3)\\SARD\\Proyecto-SARD\\Uploads\\"+Foto_Name;
        String url2 = "Uploads\\"+Foto_Name;
        
        InputStream file= Foto.getInputStream();
        File img=new File(url);
        FileOutputStream sal=new FileOutputStream(img);
        int num= file.read();
        
        while (num !=-1) {            
            sal.write(num);
            num= file.read();
        }
        */
        GS_Administrador GSA = new GS_Administrador(Documento,Tipo, Nombre, Apellido, Genero,Fecha, Direccion, Telefono, Correo, null);
        Administrador_M Admin = new Administrador_M();
        Admin.In_Administrador(GSA);
        Admin.Login_Admin(GSA);
        }
    
    protected void Actualizar_Admin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Documento,Nombre,Direccion,Telefono,Correo;
        Documento = request.getParameter("Documento_A");
        Direccion = request.getParameter("Direccion_A");
        Telefono = request.getParameter("Telefono_A");
        Correo = request.getParameter("Correo_A");
        /*
        Part Foto = request.getPart("Foto");
        String Nombre_F = Foto.getSubmittedFileName();
        String Foto_Name = Nombre+"_"+Nombre_F;
        
        String url = "G:\\Nueva Carpeta (3)\\SARD\\Proyecto-SARD\\web\\Uploads\\"+Foto_Name;
        String url2 = "Uploads\\"+Foto_Name;
        
        InputStream file= Foto.getInputStream();
        File img=new File(url);
        FileOutputStream sal=new FileOutputStream(img);
        int num= file.read();
        
        while (num !=-1) {            
            sal.write(num);
            num= file.read();
        }
        */
        GS_Administrador GSA = new GS_Administrador(Documento, Direccion, Telefono, Correo, null);
        Administrador_M Admin = new Administrador_M();
        int Consulta;
        Consulta=Admin.Act_Administrador(GSA);
        if (Consulta>0) {
            JOptionPane.showMessageDialog(null,"DATOS ACTUALIZADOS");
        }
        else{
            JOptionPane.showMessageDialog(null,"ERROR AL ACTUALIZAR");
        }
    }
    
    protected void Eliminar_Administrador (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Documento;
        Documento=request.getParameter("Documento_A");
        GS_Administrador GSA = new GS_Administrador(Documento);
        Administrador_M Admin = new Administrador_M();
        Admin.Eli_Administrador(GSA);
        
        }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
