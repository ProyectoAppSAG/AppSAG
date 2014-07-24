/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Beans;

/**
 *
 * @author Usuario
 */
public class BeanAcceso {
    
    private Integer id;
    private String estado;
    private BeanOpcionMenu oOpcionMenu;
    private BeanTipoUsuario oTipoUsuario;

    public BeanAcceso() {
    }

    public BeanAcceso(Integer id) {
        this.id = id;
    }

    public BeanAcceso(Integer id, String estado, BeanOpcionMenu oOpcionMenu, BeanTipoUsuario oTipoUsuario) {
        this.id = id;
        this.estado = estado;
        this.oOpcionMenu = oOpcionMenu;
        this.oTipoUsuario = oTipoUsuario;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public BeanOpcionMenu getoOpcionMenu() {
        return oOpcionMenu;
    }

    public void setoOpcionMenu(BeanOpcionMenu oOpcionMenu) {
        this.oOpcionMenu = oOpcionMenu;
    }

    public BeanTipoUsuario getoTipoUsuario() {
        return oTipoUsuario;
    }

    public void setoTipoUsuario(BeanTipoUsuario oTipoUsuario) {
        this.oTipoUsuario = oTipoUsuario;
    }
    
    
}
