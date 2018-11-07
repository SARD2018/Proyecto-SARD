/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Administrador_M;
import Modelo.Ambiente_Salud_M;
import Modelo.GS_Administrador;
import Modelo.GS_Ambiente_Salud;
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
 * @author SENA
 */
@WebServlet(name = "Servlet_Ambiente_Salud", urlPatterns = {"/Servlet_Ambiente_Salud"})
@MultipartConfig
public class Servlet_Ambiente_Salud extends HttpServlet {

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
        
        if (request.getParameter("R_AmbienteySalud")!=null) {
            this.Insertar_Ambiente_Salud(request, response);
        }
        
    }
    
     protected void Insertar_Ambiente_Salud (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Documento,Tipo,Nombre,Apellido,Genero,Fecha,Direccion,Telefono,Correo;
        int Rol;
        Documento = request.getParameter("Documento");
        Tipo= request.getParameter("Tipo_Documento");
        Nombre = request.getParameter("Nombre");
        Apellido = request.getParameter("Apellido");
        Genero = request.getParameter("Genero");
        Fecha = request.getParameter("Fecha_Nacimiento");
        Direccion = request.getParameter("Direccion");
        Telefono = request.getParameter("Telefono");
        Correo = request.getParameter("Correo");
        Rol = Integer.parseInt(request.getParameter("Rol"));
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
        
        GS_Ambiente_Salud GSAS = new GS_Ambiente_Salud(Documento, Tipo, Nombre, Apellido, Genero, Fecha, Direccion, Telefono, Correo, Rol, url2);
         Ambiente_Salud_M AS = new Ambiente_Salud_M();
        AS.In_Ambiente_Salud(GSAS);
        request.getRequestDispatcher("Registros_Administrador.jsp").forward(request, response);
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