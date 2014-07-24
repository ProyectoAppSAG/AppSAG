/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.commons;

import com.Beans.BeanOpcionMenu;
import java.util.List;

/**
 *
 * @author Usuario
 */
public class Validacion {
    
       public static boolean tieneAcceso(List<BeanOpcionMenu> opcionesMenu,String servletName) throws Exception{
        try {
            for(BeanOpcionMenu bom:opcionesMenu){
                if(bom.getLink().equals(servletName)){
                    return true;
                }
                if(bom.getSubMenus()!=null && !bom.getSubMenus().isEmpty()){
                    for(BeanOpcionMenu subBom:bom.getSubMenus()){
                        if(subBom.getLink().equals(servletName)){
                            return true;
                        }
                    }
                }
            }
            
            return false;
        } catch (Exception e) {
            throw e;
        }
    }
}