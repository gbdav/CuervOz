package interfaces;

import dtos.DtoPago;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author luisr
 */
public interface IPago {
    public DtoPago read(DtoPago Pago)throws Exception;
}
