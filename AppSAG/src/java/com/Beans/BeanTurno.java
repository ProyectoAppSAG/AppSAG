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
public class BeanTurno {
    
    private Integer id;
    private String nombre;
    private Date horaInicio;
    private Date horaFin;

    public BeanTurno() {
    }

    public BeanTurno(Integer id) {
        this.id = id;
    }

    public BeanTurno(Integer id, String nombre, Date horaInicio, Date horaFin) {
        this.id = id;
        this.nombre = nombre;
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
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

    public Date getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(Date horaInicio) {
        this.horaInicio = horaInicio;
    }

    public Date getHoraFin() {
        return horaFin;
    }

    public void setHoraFin(Date horaFin) {
        this.horaFin = horaFin;
    }

    @Override
    public String toString() {
        return this.nombre; //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
