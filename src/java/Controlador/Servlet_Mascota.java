package Controlador;

import Modelo.Estado_M;
import Modelo.GS_Estado;
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
        int opc;
        opc = Integer.parseInt(request.getParameter("Opcion"));
        JOptionPane.showMessageDialog(null, opc);
        if (opc == 1){
            String TipoMascota,Nombre,FechaNacimiento,Color,Raza,Sexo,Dueno;
            int Estado,Codigo;

            Codigo = Integer.parseInt(request.getParameter("Codigo"));
            TipoMascota = request.getParameter("Tipo_Mascota");
            Nombre = request.getParameter("Nombre_M");
            FechaNacimiento = request.getParameter("FechaNacimiento_M");
            Color = request.getParameter("Color_M");
            Raza = request.getParameter("Raza_M");
            Estado = Integer.parseInt(request.getParameter("Estado_M"));
            Sexo = request.getParameter("Sexo_M");
            Dueno = request.getParameter("Duenno_M");
            String url2 = request.getParameter("Foto_M");
            /*
            Part Foto = request.getPart("Foto_M");
            String Nombre_F = Foto.getSubmittedFileName();
            String Foto_Name = Dueno+"_"+Nombre+"_"+Nombre_F;
            
            String url = "C:\\xampp\\htdocs\\Java\\NetBeansProjects\\SARD\\web\\Uploads\\"+Foto_Name;
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
            GS_Estado GSE = new GS_Estado(Estado,Codigo,Dueno);
            GS_Mascota GSM = new GS_Mascota(TipoMascota, Nombre, FechaNacimiento, Color, Raza, Sexo, url2);
            Estado_M EM = new Estado_M();
            Mascota_M MM = new Mascota_M();
            int Resultado = EM.Existente(GSE, GSM);

            if (Resultado == 1){
                JOptionPane.showMessageDialog(null, "La mascota ya fue registrada");
            }else{
                MM.In_Mascota(GSM); 
                EM.In_Estado(GSE);
                request.getRequestDispatcher("Menu_Administrador.jsp").forward(request, response);
            }
        
        }else if (opc == 2){
            String TipoMas,NombreMas,FechaNac,ColorMas,RazaMas,GeneroMas,FotoMas;
            int Codigo, X;
            
            Codigo = Integer.parseInt(request.getParameter("CodigoMascota"));
            TipoMas = request.getParameter("Tipo_Mas");
            NombreMas = request.getParameter("Nombre_Mascota");
            FechaNac = request.getParameter("FechaNacmiento");
            ColorMas = request.getParameter("ColorMascota");
            RazaMas = request.getParameter("RazaMascota");
            GeneroMas = request.getParameter("GeneroMascota");
            FotoMas = request.getParameter("FotoMascota");
            GS_Mascota GSM = new GS_Mascota(Codigo, TipoMas, NombreMas, FechaNac, ColorMas, RazaMas, GeneroMas, FotoMas);
            Mascota_M MM = new Mascota_M();
            X = MM.A_Mascota(GSM);
            if (X > 0){
                JOptionPane.showMessageDialog(null, "Datos Actualizados Correctamente");
            }
        }else if (opc == 3){
            int Codigo,X;
            
            Codigo = Integer.parseInt(request.getParameter("CodigoMascota"));
            GS_Mascota GSM = new GS_Mascota(Codigo);
            Mascota_M MM = new Mascota_M();
            X = MM.B_Mascota(GSM);
            if (X > 0){
                JOptionPane.showMessageDialog(null, "Datos Eliminados Correctamente");
            }
            
        }
        
    }
    
    protected void TablaMascota(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Filtro = request.getParameter("variable");
        response.sendRedirect("Mascota.jsp?Dato="+Filtro);
        
    }
    
    protected void InsertarMascota(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         
        
        
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
