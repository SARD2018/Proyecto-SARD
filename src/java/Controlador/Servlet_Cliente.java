/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Administrador_M;
import Modelo.Cliente_M;
import Modelo.GS_Administrador;
import Modelo.GS_Cliente;
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
@WebServlet(name = "Servlet_Cliente", urlPatterns = {"/Servlet_Cliente"})
@MultipartConfig
public class Servlet_Cliente extends HttpServlet {

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
         
        if (request.getParameter("In_Ciudadano")!=null) {
            this.Insertar_Cliente(request, response);
        }
        if (request.getParameter("R_Ciudadano")!=null) {
            this.Insertar_Cliente_Login(request, response);
        }
        if (request.getParameter("Act_Ciudadano")!=null) {
            this.Actualizar_Cliente(request, response);
        }
        if (request.getParameter("Act_C")!=null) {
            this.Actualizar_Cliente_Perfil(request, response);
        }
        if (request.getParameter("Eli_Ciudadano")!=null) {
            this.Eliminar_Ciudadano(request, response);
        }
        }
    
        protected void Insertar_Cliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Documento,Tipo,Nombre,Apellido,Genero,Fecha,Direccion,Telefono,Correo;
        Documento = request.getParameter("Documento_C");
        Tipo= request.getParameter("Tipo_C");
        Nombre = request.getParameter("Nombre_C");
        Apellido = request.getParameter("Apellido_C");
        Genero = request.getParameter("Genero_C");
        Fecha = request.getParameter("Fecha_Nacimiento_C");
        Direccion = request.getParameter("Direccion_C");
        Telefono = request.getParameter("Telefono_C");
        Correo = request.getParameter("Correo_C");
        Part Foto = request.getPart("Foto_C");
        String Nombre_F = Foto.getSubmittedFileName();
        String Name = Nombre+"_"+Nombre_F;
        
        String url= "C:\\Users\\Yefrin Pacheco\\Documents\\NetBeansProjects\\SARD\\web\\Uploads\\"+Name;
        String url2 = "Uploads\\"+Name;
        
        InputStream file= Foto.getInputStream();
        File img=new File(url);
        FileOutputStream sal=new FileOutputStream(img);
        int num= file.read();
        
        while (num !=-1) {            
            sal.write(num);
            num= file.read();
        }
        
        GS_Cliente GSC = new GS_Cliente(Documento, Tipo, Nombre, Apellido, Genero, Fecha, Direccion, Telefono, Correo, url2);
        Cliente_M Cliente = new Cliente_M();
        Cliente.In_Cliente(GSC);
        Cliente.Login_Cliente(GSC);
        
         response.sendRedirect("Registros_Administrador.jsp");
        }
        
        protected void Insertar_Cliente_Login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Documento,Tipo,Nombre,Apellido,Genero,Fecha,Direccion,Telefono,Correo;
        Documento = request.getParameter("Documento");
        Tipo= request.getParameter("Tipo_Documento");
        Nombre = request.getParameter("Nombre");
        Apellido = request.getParameter("Apellido");
        Genero = request.getParameter("Genero");
        Fecha = request.getParameter("Fecha_Nacimiento");
        Direccion = request.getParameter("Direccion");
        Telefono = request.getParameter("Telefono");
        Correo = request.getParameter("Correo");
        Part Foto = request.getPart("Foto");
        String Nombre_F = Foto.getSubmittedFileName();
        String Name = Nombre+"_"+Nombre_F;
        
        String url= "C:\\Users\\Yefrin Pacheco\\Documents\\NetBeansProjects\\SARD\\web\\Uploads\\"+Name;
        String url2 = "Uploads\\"+Name;
        
        InputStream file= Foto.getInputStream();
        File img=new File(url);
        FileOutputStream sal=new FileOutputStream(img);
        int num= file.read();
        
        while (num !=-1) {            
            sal.write(num);
            num= file.read();
        }
        
        GS_Cliente GSC = new GS_Cliente(Documento, Tipo, Nombre, Apellido, Genero, Fecha, Direccion, Telefono, Correo, url2);
        Cliente_M Cliente = new Cliente_M();
        Cliente.In_Cliente(GSC);
        Cliente.Login_Cliente(GSC);
        
         response.sendRedirect("Login.jsp");
        }
        protected void Actualizar_Cliente (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Documento,Tipo,Nombre,Apellido,Genero,Fecha,Direccion,Telefono,Correo;
        Documento = request.getParameter("Documento_C");
        Nombre = request.getParameter("Nombre_C");
        Direccion = request.getParameter("Direccion_C");
        Telefono = request.getParameter("Telefono_C");
        Correo = request.getParameter("Correo_C");
        Part Foto = request.getPart("Foto_C");
        String Nombre_F = Foto.getSubmittedFileName();
        String Name = Nombre+"_"+Nombre_F;
        
        String url= "C:\\Users\\Yefrin Pacheco\\Documents\\NetBeansProjects\\SARD\\web\\Uploads\\"+Name;
        String url2 = "Uploads\\"+Name;
        
        InputStream file= Foto.getInputStream();
        File img=new File(url);
        FileOutputStream sal=new FileOutputStream(img);
        int num= file.read();
        
        while (num !=-1) {            
            sal.write(num);
            num= file.read();
        }
        GS_Cliente GSC = new GS_Cliente(Documento, Direccion, Telefono, Correo, url2);
        Cliente_M Cliente = new Cliente_M();
        int Consulta =Cliente.Act_Cliente(GSC);
            if (Consulta>0) {
                JOptionPane.showMessageDialog(null, "DATOS ACTUALIZADOS");
            }
            else{
            JOptionPane.showMessageDialog(null, "ERROR AL ACTUALIZAR");
            }
            
        response.sendRedirect("Registros_Administrador.jsp");
        }
      protected void Actualizar_Cliente_Perfil (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Documento,Tipo,Nombre,Apellido,Genero,Fecha,Direccion,Telefono,Correo;
        Documento = request.getParameter("Documento_C");
        Nombre = request.getParameter("Nombre_C");
        Direccion = request.getParameter("Direccion_C");
        Telefono = request.getParameter("Telefono_C");
        Correo = request.getParameter("Correo_C");
        Part Foto = request.getPart("Foto_C");
        String Nombre_F = Foto.getSubmittedFileName();
        String Name = Nombre+"_"+Nombre_F;
        
        String url= "C:\\Users\\Yefrin Pacheco\\Documents\\NetBeansProjects\\SARD\\web\\Uploads\\"+Name;
        String url2 = "Uploads\\"+Name;
        
        InputStream file= Foto.getInputStream();
        File img=new File(url);
        FileOutputStream sal=new FileOutputStream(img);
        int num= file.read();
        
        while (num !=-1) {            
            sal.write(num);
            num= file.read();
        }
        GS_Cliente GSC = new GS_Cliente(Documento, Direccion, Telefono, Correo, url2);
        Cliente_M Cliente = new Cliente_M();
        int Consulta =Cliente.Act_Cliente(GSC);
            if (Consulta>0) {
                JOptionPane.showMessageDialog(null, "DATOS ACTUALIZADOS");
            }
            else{
            JOptionPane.showMessageDialog(null, "ERROR AL ACTUALIZAR");
            }
            
        response.sendRedirect("Perfil_Ciudadano.jsp");
        }
        
        
        protected void Eliminar_Ciudadano (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Documento;
        Documento=request.getParameter("Documento_C");
        GS_Cliente GSC = new GS_Cliente(Documento);
        Cliente_M Cliente = new Cliente_M();
        Cliente.Eli_Cliente(GSC);
        
        response.sendRedirect("Registros_Administrador.jsp");
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
