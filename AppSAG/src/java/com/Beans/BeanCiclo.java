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
public class BeanCiclo {
    
    private String codigo;
    private Date fechaInicio;
    private Date fechaFin;
    private Double precioBase;

    public BeanCiclo() {
    }

    public BeanCiclo(String codigo) {
        this.codigo = codigo;
    }

    public BeanCiclo(String codigo, Date fechaInicio, Date fechaFin, Double precioBase) {
        this.codigo = codigo;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.precioBase = precioBase;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Date getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }

    public Double getPrecioBase() {
        return precioBase;
    }

    public void setPrecioBase(Double precioBase) {
        this.precioBase = precioBase;
    }

    @Override
    public String toString() {
        return this.codigo; //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
