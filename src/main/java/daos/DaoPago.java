package daos;

import dtos.DtoPago;
import interfaces.IPago;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DaoPago implements IPago {
    static String URL="jdbc:mysql://localhost:3306/cuervoz?useSSL=false"; //La  conexion
    static String USER="root";
    static String PWD="1234";
    
    Connection conn;
    int rs;
    PreparedStatement pst;
    String consulta;
    
    public DtoPago read(DtoPago doPago) throws Exception {
        consulta = "INSERT INTO pago (nombre, numero, fecha, id_compra) values (?, ?, ?, ?)";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn =  DriverManager.getConnection(URL, USER, PWD);
        pst = conn.prepareStatement(consulta);
        pst.setString(1, doPago.getNombre());
        pst.setString(2, doPago.getNumero());
        pst.setString(3, doPago.getFecha());
        pst.setInt(4, doPago.getId_compra());
        rs = pst.executeUpdate();
        conn.close();
        return doPago;
    }
}
