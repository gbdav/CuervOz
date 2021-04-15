package daos;

import dtos.DtoMunicipios;
import interfaces.IMunicipios;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DaoMunicipios implements IMunicipios {
    
    static String URL="jdbc:mysql://localhost:3306/cuervoz?useSSL=false"; //La  conexion
    static String USER="root";
    static String PWD="1234";

    Connection conn;
    ResultSet rs;
    PreparedStatement pst;
    String consulta;
    
    public List<DtoMunicipios> read_(String id) throws Exception {
        List<DtoMunicipios> datos = new ArrayList<>();
        consulta = "SELECT * FROM municipio WHERE id_estado like?";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn =  DriverManager.getConnection(URL, USER, PWD);
        pst = conn.prepareStatement(consulta);
        pst.setString(1, id);
        rs = pst.executeQuery();
        
       while(rs.next()){
            DtoMunicipios dto = new DtoMunicipios();
            dto.setId_estado(rs.getInt("id_estado"));
            dto.setId_municipio(rs.getInt("id_municipio"));
            dto.setMunicipio(rs.getString("municipio"));
            datos.add(dto);
        }
        conn.close();
        
        return datos;
    }
    
    public DtoMunicipios read(int id) throws Exception {
        DtoMunicipios dto = null; 
        consulta = "SELECT * FROM municipio WHERE id_municipio like?";
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn =  DriverManager.getConnection(URL, USER, PWD);
        pst = conn.prepareStatement(consulta);
        pst.setString(1, String.valueOf(id));
        rs = pst.executeQuery();  
       if(rs.next()){
            dto = new DtoMunicipios();
            dto.setId_municipio(rs.getInt("id_municipio"));
            dto.setId_estado(rs.getInt("id_estado"));
            dto.setMunicipio(rs.getString("municipio"));
        }
        
        conn.close();
        
        return dto;
    }
}