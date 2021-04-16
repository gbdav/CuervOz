package daos;

import dtos.DtoCompra;
import interfaces.ICompra;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DaoCompra implements ICompra{
    
    static String URL="jdbc:mysql://localhost:3306/cuervoz?useSSL=false"; //La  conexion
    static String USER="root";
    static String PWD="1234";
    
    Connection conn;
    int rs;
    PreparedStatement pst;
    String consulta;

    public DtoCompra read(DtoCompra doCompra) throws Exception {
        consulta = "INSERT INTO compras (nombre, apellido1, apellido2, correo, numero, calle, noExt, noInt, colonia, id_estado, id_municipio, idprod) values (?, ?, ?, ?, ?, ?, ? ,? ,? ,? ,? ,?)";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn =  DriverManager.getConnection(URL, USER, PWD);
        pst = conn.prepareStatement(consulta, PreparedStatement.RETURN_GENERATED_KEYS);
        pst.setString(1, doCompra.getNombre());
        pst.setString(2, doCompra.getApellido1());
        pst.setString(3, doCompra.getApellido2());
        pst.setString(4, doCompra.getNumero());
        pst.setString(5, doCompra.getCalle());
        pst.setString(6, doCompra.getNoExt());
        pst.setString(7, doCompra.getNoInt());
        pst.setString(8, doCompra.getColonia());
        pst.setInt(9, doCompra.getId_estado());
        pst.setInt(10, doCompra.getId_estado());
        pst.setInt(11, doCompra.getId_municipio());
        pst.setInt(12, doCompra.getIdprod());
        rs = pst.executeUpdate();  
       if (rs == 0) {
            throw new SQLException("Error, no se inserto.");
        }

        try (ResultSet generatedKeys = pst.getGeneratedKeys()) {
            if (generatedKeys.next()) {
                doCompra.setId_compra(generatedKeys.getInt(1));
            }
            else {
                throw new SQLException("Error, no se obtuvo ID.");
            }
        }
        conn.close();
        
        return doCompra;
    }    
}
