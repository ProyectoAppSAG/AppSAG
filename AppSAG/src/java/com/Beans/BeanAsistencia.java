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
public class BeanAsistencia {
    
    private Integer id;
    private Date fecha;
    private Date hora;
    private BeanMatricula oBeanMatricula;

    public BeanAsistencia() {
    }

    public BeanAsistencia(Integer id) {
        this.id = id;
    }

    public BeanAsistencia(Integer id, Date fecha, Date hora, BeanMatricula oBeanMatricula) {
        this.id = id;
        this.fecha = fecha;
        this.hora = hora;
        this.oBeanMatricula = oBeanMatricula;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Date getHora() {
        return hora;
    }

    public void setHora(Date hora) {
        this.hora = hora;
    }

    public BeanMatricula getoBeanMatricula() {
        return oBeanMatricula;
    }

    public void setoBeanMatricula(BeanMatricula oBeanMatricula) {
        this.oBeanMatricula = oBeanMatricula;
    }

    @Override
    public String toString() {
        return this.oBeanMatricula+" - "+this.fecha+" - "+this.hora; //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
