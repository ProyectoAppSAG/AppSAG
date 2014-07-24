/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.DAO;

import com.Beans.BeanOpcionMenu;
import com.Beans.BeanUsuario;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Usuario
 */
public class test {
    public static void main(String[] args) {
       DAOUsuario daou=new DAOUsuario();
        try {
            BeanUsuario beanUsuario;
            Object object=daou.logIn("ericson","ericson");
            if(object instanceof BeanUsuario){
                beanUsuario=(BeanUsuario)daou.logIn("ericson","ericson");
                System.out.println(beanUsuario);
                for(BeanOpcionMenu bom:beanUsuario.getOpcionesMenu()){
                    System.out.println("super "+bom);
                    if(bom.getSubMenus()!=null && !bom.getSubMenus().isEmpty()){
                        for(BeanOpcionMenu subBom:bom.getSubMenus()){
                            System.out.println(subBom);
                        }
                    }
                }
            }
            else if(object instanceof String){
                System.out.println(object);
            }
            
        } catch (Exception ex) {
            Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
