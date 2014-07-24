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
public class BeanGrupo {
    
    private Integer id;
    private String nombre;
    private String abreviatura;

    public BeanGrupo() {
    }

    public BeanGrupo(Integer id) {
        this.id = id;
    }

    public BeanGrupo(Integer id, String nombre, String abreviatura) {
        this.id = id;
        this.nombre = nombre;
        this.abreviatura = abreviatura;
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

    public String getAbreviatura() {
        return abreviatura;
    }

    public void setAbreviatura(String abreviatura) {
        this.abreviatura = abreviatura;
    }

    @Override
    public String toString() {
        return this.abreviatura+" - "+this.nombre; //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
