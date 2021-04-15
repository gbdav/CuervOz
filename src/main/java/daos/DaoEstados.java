package daos;

import dtos.DtoEstados;
import interfaces.IEstados;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DaoEstados implements IEstados {
    
    static String URL="jdbc:mysql://localhost:3306/cuervoz?useSSL=false"; //La  conexion
    static String USER="root";
    static String PWD="1234";
    
    Connection conn;
    ResultSet rs;
    PreparedStatement pst;
    String consulta;

    public List<DtoEstados> read() throws Exception {
        System.out.println("@@@@@@@@@@@"+URL);
        List<DtoEstados> datos = new ArrayList<>();
        consulta = "SELECT * FROM estado";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn =  DriverManager.getConnection(URL, USER, PWD);
        pst = conn.prepareStatement(consulta);
        rs = pst.executeQuery();
        
        while(rs.next()){
            DtoEstados tProd = new DtoEstados();
            tProd.setId_estado(rs.getInt("id_Estado"));
            tProd.setEstado(rs.getString("estado"));
            datos.add(tProd);
        }
        
        conn.close();
        
        return datos;
    }
}