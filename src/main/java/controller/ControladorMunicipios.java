/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import daos.DaoMunicipios;
import dtos.DtoMunicipios;
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
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author luisr
 */
@WebServlet(name = "ControladorMunicipios", urlPatterns = {"/getMunicipios"})
public class ControladorMunicipios extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            DaoMunicipios dao = new DaoMunicipios();
            String id = request.getParameter("id_estado");
            List<DtoMunicipios> datos = dao.read_(id);
            System.out.println("ok"+datos.size());
            JSONArray data = new JSONArray();
            for (DtoMunicipios a : datos) {
                JSONObject muni = new JSONObject();
                muni.put("municipio", a.getMunicipio());
                muni.put("id_estado", a.getId_estado());
                muni.put("id_municipio", a.getId_municipio());
                data.put(muni);
            }
            response.addHeader("Access-Control-Allow-Origin", "*");
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().print(data.toString());
            response.getWriter().flush();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
