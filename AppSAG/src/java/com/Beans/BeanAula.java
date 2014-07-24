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
public class BeanAula {
    
    private Integer id;
    private String nombre;
    private Integer capacidadAlumnos;
    private BeanLocal oBeanLocal;

    public BeanAula() {
    }

    public BeanAula(Integer id) {
        this.id = id;
    }

    public BeanAula(Integer id, String nombre, Integer capacidadAlumnos, BeanLocal oBeanLocal) {
        this.id = id;
        this.nombre = nombre;
        this.capacidadAlumnos = capacidadAlumnos;
        this.oBeanLocal = oBeanLocal;
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

    public Integer getCapacidadAlumnos() {
        return capacidadAlumnos;
    }

    public void setCapacidadAlumnos(Integer capacidadAlumnos) {
        this.capacidadAlumnos = capacidadAlumnos;
    }

    public BeanLocal getoBeanLocal() {
        return oBeanLocal;
    }

    public void setoBeanLocal(BeanLocal oBeanLocal) {
        this.oBeanLocal = oBeanLocal;
    }

    @Override
    public String toString() {
        return this.nombre; //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
