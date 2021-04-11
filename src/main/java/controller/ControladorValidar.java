/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import daos.DaoUsuarios;
import dtos.DtoUsuarios;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author david
 */
@WebServlet(name = "ControladorValidar", urlPatterns = {"/Validar"})
public class ControladorValidar extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            String correo=request.getParameter("correo");
            String contraseña=request.getParameter("contraseña");
            DaoUsuarios dao= new DaoUsuarios();
            DtoUsuarios usr = dao.read(correo);
            int tipo = usr.getTipoUsu();
             if(usr.getCorreo().equals(correo)){
                           if(usr.getContraseña()== contraseña){
                               if( tipo == 1 ){
                                HttpSession sesion = request.getSession();
                                sesion.setAttribute("correo", usr);
                                response.sendRedirect("controlador"); 
                               }else{
                                //HttpSession sesion = request.getSession();
                                //sesion.setAttribute("correo", usr);
                                response.sendRedirect("catalogo"); 
                               }
                            }else{
                               response.sendRedirect("login");
                               
                            }
                    }else{
                     // response.sendRedirect("login");
                      response.sendRedirect("ayuda");
                    }
        } catch (Exception ex) {
            Logger.getLogger(ControladorValidar.class.getName()).log(Level.SEVERE, null, ex);
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
