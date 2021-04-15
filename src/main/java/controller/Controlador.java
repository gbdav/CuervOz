/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import daos.DaoEstados;
import daos.DaoMunicipios;
import daos.DaoProductos;
import daos.DaoUsuarios;
import dtos.DtoCompra;
import dtos.DtoEstados;
import dtos.DtoMunicipios;
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
                DaoEstados daoEstados = new DaoEstados();
                List<DtoEstados> lstEstados = daoEstados.read();
                String id = request.getParameter("idProducto");
                DaoProductos daoProductos = new  DaoProductos();
                DtoProductos producto = daoProductos.read(id);
                
                request.setAttribute("producto", producto);
                request.setAttribute("datos", lstEstados);
            }
            if ("/pago".equals(userPath)) {
                String id = request.getParameter("idprod");
                DaoProductos daoProductos = new  DaoProductos();
                DtoProductos producto = daoProductos.read(id);
                request.setAttribute("producto", producto);
                DtoCompra compra = new DtoCompra();
                String nombre = request.getParameter("nombre");
                compra.setNombre(nombre);
                String ap1 = request.getParameter("ap1");
                compra.setApellido1(ap1);
                String ap2 = request.getParameter("ap2");
                compra.setApellido2(ap2);
                String correo = request.getParameter("mail");
                compra.setCorreo(correo);
                String numero = request.getParameter("numero");
                compra.setNumero(numero);
                String calle = request.getParameter("calle");
                compra.setCalle(calle);
                String noExt = request.getParameter("noExt");
                compra.setNoExt(noExt);
                String noInt = request.getParameter("noInt");
                compra.setNoInt(noInt);
                String colonia = request.getParameter("colonia");
                compra.setColonia(colonia);
                String idEstado = request.getParameter("estado");
                compra.setId_estado(Integer.parseInt(idEstado));
                String idMunicipio = request.getParameter("municipio");
                compra.setId_municipio(Integer.parseInt(idMunicipio));
                String idprod = request.getParameter("idprod");
                compra.setIdprod(Integer.parseInt(idprod));
                request.setAttribute("compra", compra);
                DaoEstados daoEstados = new DaoEstados();
                DtoEstados estado = daoEstados.read(idEstado);
                request.setAttribute("estado", estado);
                DaoMunicipios daoMunicipios = new DaoMunicipios();
                DtoMunicipios mun = daoMunicipios.read(Integer.parseInt(idMunicipio));
                request.setAttribute("municipio", mun);
            }
            if("/Productos".equals(userPath)){
                 DaoProductos dao = new  DaoProductos();
                 List<DtoProductos> datos = dao.read();
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
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String userPath = request.getServletPath();
         String url;
         try {
                 if("/Productos".equals(userPath)){
                 url = "/WEB-INF/view" + userPath + ".jsp";
                 request.getRequestDispatcher(url).forward(request, response);
                 }
             } catch (IOException | ServletException ex) {
                 Logger.getLogger(Controlador.class.getName()).log(Level.SEVERE, null, ex);
        }
     }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
             
    }
}
   
