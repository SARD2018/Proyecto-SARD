/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Denuncias_M;
import Modelo.GS_Denuncia;
import Modelo.GS_Denuncia_Cliente;
import Modelo.GS_Respuesta;
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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

/**
 *
 * @author Yefrin Pacheco
 */
@WebServlet(name = "Servlet_Denuncia", urlPatterns = {"/Servlet_Denuncia"})
@MultipartConfig
public class Servlet_Denuncia extends HttpServlet {

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
        
        if (request.getParameter("Boton").equalsIgnoreCase("Anonima")) {
            JOptionPane.showConfirmDialog(null, "Entra bton");
            this.Respuesta_Anonima(request, response);
        }
        if (request.getParameter("BotonDenun")!=null) {
            this.Ingreso_Denuncias(request, response);
        }
        if (request.getParameter("BotonDenun2")!=null) {
            this.Ingreso_Denuncias2(request, response);
        }
    }
     protected void Respuesta_Anonima(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        JOptionPane.showConfirmDialog(null, "Entra funcion");
        HttpSession datt = request.getSession();
        
        String Descripcion;
        int Codigo ;
        
        Descripcion= request.getParameter("Descripcion_RA");
        Codigo = Integer.parseInt(request.getParameter("Codigo_RA"));
        JOptionPane.showMessageDialog(null,Descripcion+Codigo);
         GS_Respuesta GS_R =new GS_Respuesta(Descripcion, Codigo);
        Denuncias_M  Den= new Denuncias_M();
        Den.Respuesta_Denuncia(GS_R);
        JOptionPane.showMessageDialog(null, "ENTRA METODO");
        request.getRequestDispatcher("Mostrar_Denuncias.jsp").forward(request, response);
        
        
                
     }
    protected void Ingreso_Denuncias(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Direccion,Fecha,Descripcion,Correo;
        
        Direccion= request.getParameter("Direccion");
        Descripcion= request.getParameter("Descripcion");
        Part Evidencia= request.getPart("Evidencia");
        Correo= request.getParameter("Correo");
        String NameFoto= Evidencia.getSubmittedFileName();
        int i = NameFoto.lastIndexOf("\\");
        String nuevo_nom = NameFoto.substring(i+1);
        String Name= Direccion+"_"+nuevo_nom;
        
        String url= "C:\\xampp\\htdocs\\Java\\NetBeansProjects\\SARD\\web\\Uploads\\"+Name;
        String url2= "Uploads/"+Name;
        
        InputStream file= Evidencia.getInputStream();
        File img=new File(url);
        FileOutputStream sal=new FileOutputStream(img);
        int num= file.read();
        
        while (num !=-1) {            
            sal.write(num);
            num= file.read();
        }
        
        GS_Denuncia GSD=new GS_Denuncia(0, Direccion, Descripcion, url2, Correo);
        Denuncias_M  Den= new Denuncias_M();
        Den.InsertarDenuncias(GSD);
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
    }
    protected void Ingreso_Denuncias2(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Direccion,Documento,Fecha,Descripcion;
        
        Direccion= request.getParameter("Direccion");
        Descripcion= request.getParameter("Descripcion");
        Part Evidencia= request.getPart("Evidencia");
        Documento= request.getParameter("Documento");
        String NameFoto= Evidencia.getSubmittedFileName();
        int i = NameFoto.lastIndexOf("\\");
        String nuevo_nom = NameFoto.substring(i+1);
        String Name= Direccion+"_"+nuevo_nom;
        
        String url= "C:\\xampp\\htdocs\\Java\\NetBeansProjects\\SARD\\web\\Uploads\\"+Name;
        String url2= "Uploads/"+Name;
        InputStream file= Evidencia.getInputStream();
        File img=new File(url);
        FileOutputStream sal=new FileOutputStream(img);
        int num= file.read();
        
        while (num !=-1) {            
            sal.write(num);
            num= file.read();
        }
        
        GS_Denuncia_Cliente GSD=new GS_Denuncia_Cliente(0, Direccion, Descripcion, url2, Documento);
        Denuncias_M  Den= new Denuncias_M();
        Den.InsertarDenunciasC(GSD);
        request.getRequestDispatcher("Menu_Cliente.jsp").forward(request, response);
        
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
