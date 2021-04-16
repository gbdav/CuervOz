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
            String correo = request.getParameter("correo");
            String contrasenia = request.getParameter("contrasenia");

            DaoUsuarios dao = new DaoUsuarios();
            DtoUsuarios usr = dao.read(correo);

            if (usr != null) {
                if (usr.getCorreo().equals(correo)) {
                    System.out.println("correo valido");
                    if (usr.getContrasenia().equals(contrasenia)) {
                        System.out.println("contraseña valida");
                        if (usr.getTipoUsu() == 1) {
                            HttpSession sesion = request.getSession();
                            sesion.setAttribute("usuario", usr);
                            response.sendRedirect("Productos");
                        } else {
                            HttpSession sesion = request.getSession();
                            sesion.setAttribute("usuario", usr);
                            response.sendRedirect("catalogo");
                        }
                    } else {
                        request.setAttribute("formError", Boolean.TRUE);
//                        System.out.println("contraseña invalida");
//                        response.sendRedirect("login");
                        request.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
                    }
                } else {
//                    System.out.println("correo invalido");
                    request.setAttribute("formError", Boolean.TRUE);
//                    response.sendRedirect("login");
                    request.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
                }
            } else {
//                System.out.println("usuario no existe");
//                response.sendRedirect("login");
//                    System.out.println("correo invalido");
                request.setAttribute("formError", Boolean.TRUE);
//                    response.sendRedirect("login");
                request.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
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
