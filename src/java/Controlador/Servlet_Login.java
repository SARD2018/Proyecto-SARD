
package Controlador;

import Modelo.GS_Login;
import Modelo.Login_M;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author Yefrin Pacheco
 */
@WebServlet(name = "Servlet_Login", urlPatterns = {"/Servlet_Login"})
public class Servlet_Login extends HttpServlet {

    private String Usuario1,Clave1;
    private int Rol1;
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
        
        if (request.getParameter("Ingreso")!=null) {
            this.Validar_Login(request, response);
        }
    }
    
     protected void Validar_Login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Usuario,Clave;
        Usuario=request.getParameter("Usuario");
        Clave=request.getParameter("Clave");
        GS_Login in = new GS_Login(Usuario, Clave);
        Login_M log = new Login_M();
        ArrayList<GS_Login> arreglo = new ArrayList<>();
        arreglo=log.Validacion(in);
        
        if(arreglo.size()>0){
              
            for (int i = 0; i < arreglo.size() ; i++) {
                in=arreglo.get(i);
                Usuario1=in.getUsuario();
                Clave1=in.getClave();
                Rol1=in.getRol_Ingreso();
            }
        
        if((Usuario1.equals(Usuario)) && (Clave1.equals(Clave))){
          HttpSession datt = request.getSession();
            switch (Rol1){
                case 1:
                     String Documento_Admin=Usuario1;
                     String Nombre_Admin=log.Nombre_Admin();
                     datt.setAttribute("NomSession", Nombre_Admin);
                     datt.setAttribute("DocSession", Documento_Admin);
                    response.sendRedirect("Menu_Administrador.jsp");
                    
                break;
                case 2:
                     String Documento_Ambiente=Usuario1;
                     String Nombre_Ambiente=log.Nombre_Ambiente_Salud();
                     datt.setAttribute("NomSession", Nombre_Ambiente);
                     datt.setAttribute("DocSession", Documento_Ambiente);
                    response.sendRedirect("Menu_Ambiente.jsp");
                 break;
                 case 3:
                      String Documento_Salud=Usuario1;
                    String Nombre_Salud=log.Nombre_Ambiente_Salud();
                    datt.setAttribute("NomSession", Nombre_Salud);
                    datt.setAttribute("DocSession", Documento_Salud);
                    response.sendRedirect("Menu_Salud.jsp");
                 break;
                 case 4:
                     String Documento_Veterinaria=Usuario1;
                     String Nombre_Veterinaria=log.Nombre_Veterinaria();
                     datt.setAttribute("NomSession", Nombre_Veterinaria);
                     datt.setAttribute("DocSession", Documento_Veterinaria);
                    response.sendRedirect("Menu_Veterinaria.jsp");
                 break;
                 case 5:
                     String Documento_Ciudadano=Usuario1;
                    String Nombre_Usuario=log.Nombre_Cliente();
                    datt.setAttribute("NomSession", Nombre_Usuario);
                    datt.setAttribute("DocSession", Documento_Ciudadano);
                    response.sendRedirect("Menu_Cliente.jsp");
                 break;
                 default:
                     JOptionPane.showMessageDialog(null,"Datos Incorrectos");
                    response.sendRedirect("Login.jsp");
            }
        }
       
        }
        else{
            
            JOptionPane.showMessageDialog(null, "No entro");
        }
  
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
