package daos;

import dtos.DtoCompra;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DaoCompra {
    
    static String URL="jdbc:mysql://localhost:3306/cuervoz?useSSL=false"; //La  conexion
    static String USER="root";
    static String PWD="1234";
    
    Connection conn;
    ResultSet rs;
    PreparedStatement pst;
    String consulta;

    public DtoCompra read(DtoCompra doCompra) throws Exception {
        DtoCompra dto = null; 
        consulta = "SELECT * FROM estado WHERE id_estado like?";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn =  DriverManager.getConnection(URL, USER, PWD);
        pst = conn.prepareStatement(consulta);
        pst.setString(1, "");
        rs = pst.executeQuery();  
       
        conn.close();
        
        return dto;
    }
    
}
