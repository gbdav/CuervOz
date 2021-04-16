/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ozvsx
 */
@WebServlet(name = "ControladorLibre", urlPatterns = {"/acerca",
    "/contactanos",
    "/ayuda",
    //"/tablas",
    "/registrar",
    "/mapa_sitio",
    "/recuperar",
    "/recuperacion",
    "/acerca",

})
public class ControladorLibre extends HttpServlet {

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
            String userPath = request.getServletPath();
            
            if(userPath != null){
                switch (userPath){
            case "/contactanos":
                userPath = "/contactanos";
                break;
            case "/ayuda":
                userPath = "/ayuda";
                break;
            case "/registrar":
                userPath = "/registrar";
                break;
            case "/mapa_sitio":
                userPath = "/mapa_sitio";
                break;
            case "/recuperacion":
                userPath = "/recuperacion";
                break;
            case "/tablas":
                userPath = "/tablas";
                break;
            case "/recuperar":
                userPath = "/recuperar";
                break;
            case "/error":
                userPath = "/error.html";
                break;
            /*case "/controlador":
                userPath = "/controlador";
                break;*/
            case "/acerca":
                userPath = "/acerca";
                break;
            default:
                userPath = "/error.html";           
        }
            }
            String url;
        if ("/error.html".equals(userPath)) {
            url = "/WEB-INF" + userPath;
        } else {
            url = "/WEB-INF/view" + userPath + ".jsp";
        }
             request.getRequestDispatcher(url).forward(request, response);
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
