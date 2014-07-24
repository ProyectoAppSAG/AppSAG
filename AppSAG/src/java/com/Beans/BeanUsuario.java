/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Beans;

import java.util.Date;
import java.util.List;

/**
 *
 * @author Usuario
 */
public class BeanUsuario {
    
   private Integer id;
   private String nick;
   private String password;
   private Date ultimoAcceso;
   private String estadoConexion;
   private String estado;
   private BeanTipoUsuario oTipoUsuario;
   private BeanLocal oLocal;
   private List<BeanOpcionMenu> opcionesMenu;

    public BeanUsuario() {
    }

   
   
    public BeanUsuario(Integer id) {
        this.id = id;
    }

    public BeanUsuario(Integer id, String nick, String password, Date ultimoAcceso, String estadoConexion, String estado, BeanTipoUsuario oTipoUsuario, BeanLocal oLocal) {
        this.id = id;
        this.nick = nick;
        this.password = password;
        this.ultimoAcceso = ultimoAcceso;
        this.estadoConexion = estadoConexion;
        this.estado = estado;
        this.oTipoUsuario = oTipoUsuario;
        this.oLocal = oLocal;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getUltimoAcceso() {
        return ultimoAcceso;
    }

    public void setUltimoAcceso(Date ultimoAcceso) {
        this.ultimoAcceso = ultimoAcceso;
    }

    public String getEstadoConexion() {
        return estadoConexion;
    }

    public void setEstadoConexion(String estadoConexion) {
        this.estadoConexion = estadoConexion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public BeanTipoUsuario getoTipoUsuario() {
        return oTipoUsuario;
    }

    public void setoTipoUsuario(BeanTipoUsuario oTipoUsuario) {
        this.oTipoUsuario = oTipoUsuario;
    }

    public BeanLocal getoLocal() {
        return oLocal;
    }

    public void setoLocal(BeanLocal oLocal) {
        this.oLocal = oLocal;
    }

    public List<BeanOpcionMenu> getOpcionesMenu() {
        return opcionesMenu;
    }

    public void setOpcionesMenu(List<BeanOpcionMenu> opcionesMenu) {
        this.opcionesMenu = opcionesMenu;
    }
    
    @Override
    public String toString() {
        return this.nick;
    }
   
   
   
   
   
}
