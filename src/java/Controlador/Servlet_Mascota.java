    package Controlador;

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

@MultipartConfig
@WebServlet(name = "Servlet_Mascota", urlPatterns = {"/Servlet_Mascota"})
public class Servlet_Mascota extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        if(request.getParameter("btn-Insertar")!=null){
            this.InsertarMascota(request, response);
        }
    }
    
    protected void InsertarMascota(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String TipoMascota,Nombre,FechaNacimiento,Color,Raza,Sexo,Dueno;
        TipoMascota = request.getParameter("Tipo_Mascota");
        Nombre = request.getParameter("Nombre_M");
        FechaNacimiento = request.getParameter("FechaNacimiento_M");
        Color = request.getParameter("Color_M");
        Raza = request.getParameter("Raza_M");
        Sexo = request.getParameter("Sexo_M");
        Dueno = request.getParameter("Duenno_M");
        Part Foto = request.getPart("Foto_M");
        String Nombre_F = Foto.getSubmittedFileName();
        String Foto_Name = Dueno+"_"+Nombre+"_"+Nombre_F;
        
        String url = "C:\\xampp\\htdocs\\Java\\NetBeansProjects\\Proyecto-SARD\\web\\Uploads\\"+Foto_Name;
        String url2 = "Uploads\\"+Foto_Name;
        
        InputStream file= Foto.getInputStream();
        File img=new File(url);
        FileOutputStream sal=new FileOutputStream(img);
        int num= file.read();
        
        while (num !=-1) {            
            sal.write(num);
            num= file.read();
        }
        
        GS_Mascota GSM = new GS_Mascota(TipoMascota, Nombre, FechaNacimiento, Color, Raza, Sexo, Dueno, url2);
        Mascota_M MM = new Mascota_M();
        MM.In_Mascota(GSM);
        request.getRequestDispatcher("Mascota.jsp").forward(request, response);
        
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
