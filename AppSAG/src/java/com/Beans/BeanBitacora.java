/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Beans;

import java.util.Date;

/**
 *
 * @author Usuario
 */
public class BeanBitacora {
    
    private Integer id;
    private String accion;
    private Date fecha;
    private String ipSesion;
    private String idRegistro;
    private String tabla;
    private String modificacion;
    private BeanUsuario oBeanUsuario;

    public BeanBitacora() {
    }

    public BeanBitacora(Integer id) {
        this.id = id;
    }

    public BeanBitacora(Integer id, String accion, Date fecha, String ipSesion, String idRegistro, String tabla, String modificacion, BeanUsuario oBeanUsuario) {
        this.id = id;
        this.accion = accion;
        this.fecha = fecha;
        this.ipSesion = ipSesion;
        this.idRegistro = idRegistro;
        this.tabla = tabla;
        this.modificacion = modificacion;
        this.oBeanUsuario = oBeanUsuario;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccion() {
        return accion;
    }

    public void setAccion(String accion) {
        this.accion = accion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getIpSesion() {
        return ipSesion;
    }

    public void setIpSesion(String ipSesion) {
        this.ipSesion = ipSesion;
    }

    public String getIdRegistro() {
        return idRegistro;
    }

    public void setIdRegistro(String idRegistro) {
        this.idRegistro = idRegistro;
    }

    public String getTabla() {
        return tabla;
    }

    public void setTabla(String tabla) {
        this.tabla = tabla;
    }

    public String getModificacion() {
        return modificacion;
    }

    public void setModificacion(String modificacion) {
        this.modificacion = modificacion;
    }

    public BeanUsuario getoBeanUsuario() {
        return oBeanUsuario;
    }

    public void setoBeanUsuario(BeanUsuario oBeanUsuario) {
        this.oBeanUsuario = oBeanUsuario;
    }

    @Override
    public String toString() {
        return this.oBeanUsuario+" - "+this.accion+" - "+this.tabla+" - "+this.modificacion; //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
