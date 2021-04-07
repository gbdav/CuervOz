/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import static daos.DaoProductos.PWD;
import static daos.DaoProductos.URL;
import static daos.DaoProductos.USER;
import dtos.DtoUsuarios;
import interfaces.IUsuarios;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DaoUsuarios implements IUsuarios{
 static String URL="jdbc:mysql://localhost:3306/cuervoz?useSSL=false"; //La  conexion
    static String USER="root";
    static String PWD="123barcenas";
    
    Connection conn;
    ResultSet rs;
    PreparedStatement pst;
    String consulta;
    
    @Override
    public DtoUsuarios read(String Usuarios) throws Exception {
        
        DtoUsuarios dto = null; 
        String consulta = "SELECT FROM usuarios WHERE LIKE ? ";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn =  DriverManager.getConnection(URL, USER, PWD);
        pst = conn.prepareStatement(consulta);
         pst.setString(1, Usuarios);
        rs = pst.executeQuery();  
       
       if(rs.next()){
            DtoUsuarios tuser = new DtoUsuarios();
            tuser.setIdUser(rs.getInt("iduser"));
            tuser.setTipoUsu(rs.getInt("tipo_usu"));
            tuser.setNombre(rs.getString("nombre"));
            tuser.setAppaterno(rs.getString("appaterno"));
            tuser.setApmaterno(rs.getString("apmaterno"));
            tuser.setCorreo(rs.getString("correo"));
            tuser.setContraseña(rs.getString("contraseña"));
        }
        
        conn.close();
        
        return dto;
    }
 
}
