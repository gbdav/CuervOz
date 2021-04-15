/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import daos.DaoEstados;
import daos.DaoProductos;
import daos.DaoUsuarios;
import dtos.DtoEstados;
import dtos.DtoProductos;
import dtos.DtoUsuarios;
import java.io.IOException;
import java.util.ArrayList;
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
 * @author luisr
 */
@WebServlet(name = "Controlador", loadOnStartup = 1, urlPatterns = {
    "/login",
    "/catalogo",
    "/contactanos",
    "/ayuda",
    "/tablas",
    "/registrar",
    "/buzon",
    "/mapa_sitio",
    "/recuperar",
    "/acerca",
    "/Productos",
    "/crud",
    "/error",
    "/compra",
    "/pago",
//    "insert",
})
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
            case "/registrar":
                userPath = "/registrar";
                break;
            case "/buzon":
                userPath = "/buzon";
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
            case "/compra":
                userPath = "/compra";
                break;
            case "/Productos":
                userPath = "/Productos";
                break;    
            case "/pago":
                userPath = "/pago";
                break;
           	case "/controlador":
                userPath = "/controlador";
                break;
            case "/acerca":
                userPath = "/acerca";
                break;
            default:
                userPath = "/error.html";           
        }
        String url;
        if ("/error.html".equals(userPath)) {
            url = "/WEB-INF" + userPath;
        } else {
            url = "/WEB-INF/view" + userPath + ".jsp";
        }
        
        try {
            System.out.println(url);
            if ("/catalogo".equals(userPath)) {
                DaoProductos dao = new DaoProductos();
                List<DtoProductos> datos = dao.read();
                request.setAttribute("datos", datos);
            }
            
            if ("/compra".equals(userPath)) {
                DaoEstados dao = new DaoEstados();
                List<DtoEstados> datos = dao.read();
                request.setAttribute("datos", datos);
            }
            
            if(userPath == "/Productos"){
                DaoProductos dao = new  DaoProductos();
                List<DtoProductos> datos = dao.read();
                request.setAttribute("datos", datos);        
                //request.getRequestDispatcher("/WEB-INF/view/Productos.jsp").forward(request, response);
                //userPath = "/Productos";
            }
            
             request.getRequestDispatcher(url).forward(request, response);
        } catch (IOException | ServletException ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//         String userPath = request.getServletPath();
//         String url;
//         try {
//                 if(userPath == "/Productos"){
//                 url = "/WEB-INF/view" + userPath + ".jsp";
//                 request.getRequestDispatcher(url).forward(request, response);
//                 }
//             } catch (Exception ex) {
//                 Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
//        }
     }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
             
    }
}
   
