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
public class BeanPago {
    private Integer id;
    private Double monto;
    private Date fecha;
    private String estado;
    private String tipo;
    private BeanMatricula oBeanMatricula;

    public BeanPago() {
    }

    public BeanPago(Integer id) {
        this.id = id;
    }

    public BeanPago(Integer id, Double monto, Date fecha, String estado, String tipo, BeanMatricula oBeanMatricula) {
        this.id = id;
        this.monto = monto;
        this.fecha = fecha;
        this.estado = estado;
        this.tipo = tipo;
        this.oBeanMatricula = oBeanMatricula;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public BeanMatricula getoBeanMatricula() {
        return oBeanMatricula;
    }

    public void setoBeanMatricula(BeanMatricula oBeanMatricula) {
        this.oBeanMatricula = oBeanMatricula;
    }

    @Override
    public String toString() {
        return this.id+" - "+this.fecha+" - "+this.monto+" - "+this.oBeanMatricula; //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
