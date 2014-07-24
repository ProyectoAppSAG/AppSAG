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
public class BeanObservacion {
    
    private Integer id;
    private String descripcion;
    private BeanAlumno oBeanAlumno;
    private BeanCiclo oBeanCiclo;

    public BeanObservacion() {
    }

    public BeanObservacion(Integer id) {
        this.id = id;
    }

    public BeanObservacion(Integer id, String descripcion, BeanAlumno oBeanAlumno, BeanCiclo oBeanCiclo) {
        this.id = id;
        this.descripcion = descripcion;
        this.oBeanAlumno = oBeanAlumno;
        this.oBeanCiclo = oBeanCiclo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public BeanAlumno getoBeanAlumno() {
        return oBeanAlumno;
    }

    public void setoBeanAlumno(BeanAlumno oBeanAlumno) {
        this.oBeanAlumno = oBeanAlumno;
    }

    public BeanCiclo getoBeanCiclo() {
        return oBeanCiclo;
    }

    public void setoBeanCiclo(BeanCiclo oBeanCiclo) {
        this.oBeanCiclo = oBeanCiclo;
    }

    @Override
    public String toString() {
        return this.descripcion; //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
