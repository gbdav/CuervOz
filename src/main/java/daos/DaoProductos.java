package daos;

import dtos.DtoProductos;
import interfaces.IProductos;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DaoProductos implements IProductos {
    
    static String URL="jdbc:mysql://localhost:3306/cuervos?useSSL=false"; //La  conexion
    static String USER="root";
    static String PWD="1234";

    Connection conn;
    ResultSet rs;
    PreparedStatement pst;
    String consulta;

    public List<DtoProductos> read() throws Exception {

        List<DtoProductos> datos = new ArrayList<>();
        consulta = "SELECT * FROM producto";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn =  DriverManager.getConnection(URL, USER, PWD);
        pst = conn.prepareStatement(consulta);
        rs = pst.executeQuery();
        
        while(rs.next()){
            DtoProductos tProd = new DtoProductos();
            tProd.setIdprod(rs.getInt("idprod"));
            tProd.setNombre(rs.getString("nombreprod"));
            tProd.setDecripcion(rs.getString("descripcion"));
            tProd.setCosto(rs.getDouble("costo"));
            tProd.setImgprod(rs.getString("imgprod"));
            datos.add(tProd);
        }
        
        conn.close();
        
        return datos;
    }

}