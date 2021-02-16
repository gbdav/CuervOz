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
 * @author luisr
 */
@WebServlet(name = "Controlador",loadOnStartup = 1, urlPatterns = {"/login", "/catalogo", "/contactanos", "/ayuda", "/tables", "/registrar"})
public class Controlador extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userPath = request.getServletPath();

        switch (userPath) {
            case "/login":
                userPath = "/login";
                break;
            case "/catalogo":
                userPath = "/catalogo";
                break;
            case "/contactanos":
                userPath = "/contactanos";
                break;
            case "/ayuda":
                userPath = "/ayuda";
                break;
            case "/tables":
                userPath = "/tables";
                break;
            case "/registrar":
                userPath = "/registrar";
                break;
            default:
                break;
        }

        String url = "/WEB-INF/view" + userPath + ".jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (IOException | ServletException ex) {
            
        }
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }
        
}
