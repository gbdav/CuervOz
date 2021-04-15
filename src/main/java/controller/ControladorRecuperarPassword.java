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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 *
 * @author david
 */
@WebServlet(name = "ControladorRecuperarPassword", urlPatterns = {"/validaCorreoRecuperar"})
public class ControladorRecuperarPassword extends HttpServlet {

//    public static void send(String from, String password, String to, String sub, String msg) {
//
//        //Get properties object    
//        Properties props = new Properties();
//        props.put("mail.smtp.host", "smtp.gmail.com");
//        props.put("mail.smtp.socketFactory.port", "465");
//        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.port", "465");
//        //get Session   
//        Session session = Session.getInstance(props,
//                new javax.mail.Authenticator() {
//            protected PasswordAuthentication getPasswordAuthentication() {
//                return new PasswordAuthentication(from, password);
//            }
//        });
//        //compose message    
//        try {
////            MimeMessage message = new MimeMessage(session);
////            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
////            message.setSubject(sub);
////            message.setText(msg);
////            //send message  
////            Transport.send(message);
////            System.out.println("message sent successfully");
////          create the message
//            Message message = new MimeMessage(session);
//            message.setFrom(new InternetAddress("mmmlovesu2@gmail.com"));
//            message.setRecipients(Message.RecipientType.TO,
//                    InternetAddress.parse("2018371056@uteq.edu.mx"));
//            message.setSubject("Test SSL");
//            message.setText("This is SSL test");
//            // send it
//            Transport.send(message);
//        } catch (MessagingException e) {
//            throw new RuntimeException(e);
//        }
//
//    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            response.setContentType("text/html;charset=UTF-8");
            String correo = request.getParameter("correo");
            DaoUsuarios dao = new DaoUsuarios();
            DtoUsuarios usr = dao.read(correo);

            if (usr != null) {
                
                final String username = "mmmlovesu2@gmail.com";
                final String password = "Correomomomilk10";

                Properties prop = new Properties();
                prop.put("mail.smtp.host", "smtp.gmail.com");
                prop.put("mail.smtp.port", "587");
                prop.put("mail.smtp.auth", "true");
                prop.put("mail.smtp.starttls.enable", "true"); //TLS
                prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

                Session session = Session.getInstance(prop,
                        new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

                try {

                    Message message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(correo));
                    message.setRecipients(
                            Message.RecipientType.TO,
                            InternetAddress.parse(correo)
                    );
                    message.setSubject("Recuperación de Contraseña");
                    message.setText("Estas intentando iniciar sesión en Cuervoz,"
                            + "\n\n La contraseña es: " + usr.getContrasenia());

                    Transport.send(message);

                    System.out.println("Correo enviado");
                    request.setAttribute("alertMsj", "Se a enviado un correo!");

                    String url = "/WEB-INF/view/login.jsp";
                    request.getRequestDispatcher(url).forward(request, response);

                } catch (MessagingException e) {
                    e.printStackTrace();
                }
//                response.sendRedirect("login");
            } else {
//                response.setContentType("application/json");
//                PrintWriter out = response.getWriter();
//                out.print("{\"sucMessage\": \"LBV Teil wurde in der Datenbank gespeichert.\"}");
//                out.flush();
//                System.out.println("usuario no existe");
                request.setAttribute("usrNull", Boolean.TRUE);

                String url = "/WEB-INF/view/recuperar.jsp";
                request.getRequestDispatcher(url).forward(request, response);

//                response.sendRedirect("recuperar");
            }

        } catch (Exception ex) {
            Logger.getLogger(ControladorRecuperarPassword.class.getName()).log(Level.SEVERE, null, ex);
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
