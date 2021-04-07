/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import dtos.DtoUsuarios;


/**
 *
 * @author david
 */
public interface IUsuarios {
    public DtoUsuarios read(String Usuarios)throws Exception;
}
