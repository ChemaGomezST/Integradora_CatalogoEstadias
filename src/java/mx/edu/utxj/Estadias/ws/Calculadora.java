/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.utxj.Estadias.ws;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author PC12
 */
@WebService(serviceName = "Calculadora")
public class Calculadora {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "suma")
    public float suma(@WebParam(name = "numero1") float numero1, 
                      @WebParam(name = "numero2") float numero2) {
        //TODO write your implementation code here:
        return numero1 + numero2;
    }

   
   
}
