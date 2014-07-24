/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Beans;

import java.util.List;

/**
 *
 * @author Usuario
 */
public class BeanOpcionMenu {
    private Integer id;
    private String nombre;
    private String link;
    private BeanOpcionMenu oOpcionMenu;
    private String icono;
    private String estado;
    private List<BeanOpcionMenu> subMenus;

    public BeanOpcionMenu() {
    }

    public BeanOpcionMenu(Integer id) {
        this.id = id;
    }

    public BeanOpcionMenu(Integer id, String nombre, String link, BeanOpcionMenu oOpcionMenu, String estado,String icono) {
        this.id = id;
        this.nombre = nombre;
        this.link = link;
        this.oOpcionMenu = oOpcionMenu;
        this.icono=icono;
        this.estado = estado;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public BeanOpcionMenu getoOpcionMenu() {
        return oOpcionMenu;
    }

    public void setoOpcionMenu(BeanOpcionMenu oOpcionMenu) {
        this.oOpcionMenu = oOpcionMenu;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getIcono() {
        return icono;
    }

    public void setIcono(String icono) {
        this.icono = icono;
    }

    public List<BeanOpcionMenu> getSubMenus() {
        return subMenus;
    }

    public void setSubMenus(List<BeanOpcionMenu> subMenus) {
        this.subMenus = subMenus;
    }
    
    @Override
    public String toString() {
        return this.nombre; //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
