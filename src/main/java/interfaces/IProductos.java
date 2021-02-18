/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import dtos.DtoProductos;
import java.util.List;

/**
 *
 * @author david
 */
public interface IProductos {

    public List<DtoProductos> read()throws Exception;
    
}
