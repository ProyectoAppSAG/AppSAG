/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Logics;

import com.Beans.BeanUsuario;
import com.DAO.DAOUsuario;

/**
 *
 * @author Usuario
 */
public class LogicUsuario{
    public Object logIn(String usuario,String password)throws Exception{
        DAOUsuario dAOUsuario=new DAOUsuario();
        try {
            
            Object object=dAOUsuario.logIn(usuario, password);
            
            return object;
        } catch (Exception e) {
            throw e;
        }
        finally{
            dAOUsuario.close();
        }
    }
}
