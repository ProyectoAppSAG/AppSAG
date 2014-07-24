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
public class BeanMatricula {
    
    private Integer id;
    private Date fechaMatricula;
    private Double monto;
    private String estadoPago;
    private BeanCiclo oBeanCiclo;
    private BeanAlumno oBeanAlumno;
    private BeanLocal oBeanLocal;

    public BeanMatricula() {
    }

    public BeanMatricula(Integer id) {
        this.id = id;
    }

    public BeanMatricula(Integer id, Date fechaMatricula, Double monto, String estadoPago, BeanCiclo oBeanCiclo, BeanAlumno oBeanAlumno, BeanLocal oBeanLocal) {
        this.id = id;
        this.fechaMatricula = fechaMatricula;
        this.monto = monto;
        this.estadoPago = estadoPago;
        this.oBeanCiclo = oBeanCiclo;
        this.oBeanAlumno = oBeanAlumno;
        this.oBeanLocal = oBeanLocal;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFechaMatricula() {
        return fechaMatricula;
    }

    public void setFechaMatricula(Date fechaMatricula) {
        this.fechaMatricula = fechaMatricula;
    }

    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }

    public String getEstadoPago() {
        return estadoPago;
    }

    public void setEstadoPago(String estadoPago) {
        this.estadoPago = estadoPago;
    }

    public BeanCiclo getoBeanCiclo() {
        return oBeanCiclo;
    }

    public void setoBeanCiclo(BeanCiclo oBeanCiclo) {
        this.oBeanCiclo = oBeanCiclo;
    }

    public BeanAlumno getoBeanAlumno() {
        return oBeanAlumno;
    }

    public void setoBeanAlumno(BeanAlumno oBeanAlumno) {
        this.oBeanAlumno = oBeanAlumno;
    }

    public BeanLocal getoBeanLocal() {
        return oBeanLocal;
    }

    public void setoBeanLocal(BeanLocal oBeanLocal) {
        this.oBeanLocal = oBeanLocal;
    }

    @Override
    public String toString() {
        return this.fechaMatricula+" - "+this.oBeanAlumno+" - "+this.oBeanCiclo; //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
