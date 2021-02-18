/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dtos;

/**
 *
 * @author david
 */
public class DtoProductos {
    private int idprod;
    private  String nombreprod;
    private  String descripcion;
    private  double costo;
    private  String imgprod;

    public int getIdprod(){
        return idprod;
    }
    public void setIdprod(int idprod){
        this.idprod = idprod;
    }
    
    public String getNombre(){
        return nombreprod;
    }
    public void setNombre(String nombreprod){
        this.nombreprod = nombreprod;
    }
    
    public String getDecripcion(){
        return descripcion;
    }
    public void setDecripcion(String descripcion){
        this.descripcion = descripcion;
    }
    
    public double getCosto(){
        return costo;
    }
    public void setCosto(double costo){
        this.costo = costo;
    }
    
    public String getImgprod(){
        return imgprod;
    }
    public void setImgprod(String imgprod){
        this.imgprod = imgprod;
    }
    
}
