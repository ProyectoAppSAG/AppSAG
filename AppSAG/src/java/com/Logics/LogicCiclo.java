/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Logics;

import com.Beans.BeanCiclo;
import com.DAO.DAOCiclo;
import java.util.List;

/**
 *
 * @author Usuario
 */
public class LogicCiclo {
    
    public List<BeanCiclo> listaCiclos(String codigo,String fecha)throws Exception{
        DAOCiclo dAOCiclo=new DAOCiclo();
        try {
            List<BeanCiclo> listaCiclos=dAOCiclo.listarCiclos(null, null);
            
            return listaCiclos;
        } catch (Exception e) {
            throw e;
        }
    }
}
