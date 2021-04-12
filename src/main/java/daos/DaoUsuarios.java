/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;
import dtos.DtoUsuarios;
import interfaces.IUsuarios;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DaoUsuarios implements IUsuarios{
 static String URL="jdbc:mysql://localhost:3306/cuervoz?useSSL=false"; //La  conexion
    static String USER="root";
    static String PWD="1234";
    
    Connection conn;
    ResultSet rs;
    PreparedStatement pst;
    String consulta;
    
    @Override
    public DtoUsuarios read(String correo) throws Exception {
        DtoUsuarios dto = null; 
        consulta = "SELECT *FROM usuarios WHERE correo like?";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn =  DriverManager.getConnection(URL, USER, PWD);
        pst = conn.prepareStatement(consulta);
        pst.setString(1, correo);
        rs = pst.executeQuery();  
       if(rs.next()){
            dto = new DtoUsuarios();
            dto.setIdUser(rs.getInt("iduser"));
            dto.setTipoUsu(rs.getInt("tipo_usu"));
            dto.setNombre(rs.getString("nombre"));
            dto.setAppaterno(rs.getString("appaterno"));
            dto.setApmaterno(rs.getString("apmaterno"));
            dto.setCorreo(rs.getString("correo"));
            dto.setContraseña(rs.getString("contraseña"));
        }
        
        conn.close();
        
        return dto;
    }
 
}
