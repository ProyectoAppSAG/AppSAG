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
public class BeanSimulacro {
    
    private Integer id;
    private String rutaSimulacro;
    private Date fecha;
    private BeanCiclo oBeanCiclo;

    public BeanSimulacro() {
    }

    public BeanSimulacro(Integer id) {
        this.id = id;
    }

    public BeanSimulacro(Integer id, String rutaSimulacro, Date fecha, BeanCiclo oBeanCiclo) {
        this.id = id;
        this.rutaSimulacro = rutaSimulacro;
        this.fecha = fecha;
        this.oBeanCiclo = oBeanCiclo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRutaSimulacro() {
        return rutaSimulacro;
    }

    public void setRutaSimulacro(String rutaSimulacro) {
        this.rutaSimulacro = rutaSimulacro;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public BeanCiclo getoBeanCiclo() {
        return oBeanCiclo;
    }

    public void setoBeanCiclo(BeanCiclo oBeanCiclo) {
        this.oBeanCiclo = oBeanCiclo;
    }

    @Override
    public String toString() {
        return this.oBeanCiclo+" - "+this.rutaSimulacro; //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
