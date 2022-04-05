/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
@WebServlet(urlPatterns = {"/Servlet"})
public class Servlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String url = "JSP1.jsp";
            String nombre = "Casimiro";
            int edad = 17;
            
            url += "?nombre=" + nombre + "&edad=" + edad;
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet</title>");            
            out.println("</head>"); 
            out.println("<body>");
	    out.println("img src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUI_dOxJiabCtC_IYy7HaXwvTaz0RTl1e_nw&usqp=CAU");
	    out.println("<hr size=6 color=black></hr>");
	    out.println("<br></br>")
            out.println("<font size=8>PROGRAMA DE GENERACIONES</font>");
            out.println("<font seize=6>¿Quieres saber de qué generación eres? Pues solo ingresa tu nombre y el año en que naciste para determinar a que generación perteneces</font>");
            out.println("<h1>Por favor, ingrese su nombre" + "</h1>");
	    out.prinln("<hr size=6 color=black></hr>");
            out.println("<h1>Ahora ingrese la edad que cumple el 2022" + "</h1>");   
	    out.println("<hr size=6 color=black></hr>");
	    out.println("<br><br>");
            out.println("<a href=\"" + url +"\"> Para visualisar los resultados haga click </a>");
            out.println("</body>");
            out.println("</html>");
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
