package controller;

import daos.DaoCompra;
import daos.DaoEstados;
import daos.DaoMunicipios;
import daos.DaoPago;
import daos.DaoUsuarios;
import dtos.DtoCompra;
import dtos.DtoEstados;
import dtos.DtoMunicipios;
import dtos.DtoPago;
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
@WebServlet(name = "ControladorPago", urlPatterns = {"/Pagar"})
public class ControladorPago extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
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
            
            DaoCompra daoCompra = new DaoCompra();
            DtoCompra dtoCompra = daoCompra.read(compra);

            DtoPago pago = new DtoPago();
            String name = request.getParameter("name");
            pago.setNombre(name);
            String card = request.getParameter("card-no");
            pago.setNumero(card);
            String expdate = request.getParameter("expdate");
            pago.setFecha(expdate);
            pago.setId_compra(dtoCompra.getId_compra());
            
            DaoPago daoPago = new DaoPago();
            DtoPago dtoPago = daoPago.read(pago);
            response.sendRedirect("./catalogo");
            
        } catch (Exception ex) {
            Logger.getLogger(ControladorPago.class.getName()).log(Level.SEVERE, null, ex);
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
