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
public class BeanEscuela {
    
    private Integer id;
    private String nombre;
    private BeanGrupo oBeanGrupo;

    public BeanEscuela() {
    }

    public BeanEscuela(Integer id) {
        this.id = id;
    }

    public BeanEscuela(Integer id, String nombre, BeanGrupo oBeanGrupo) {
        this.id = id;
        this.nombre = nombre;
        this.oBeanGrupo = oBeanGrupo;
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

    public BeanGrupo getoBeanGrupo() {
        return oBeanGrupo;
    }

    public void setoBeanGrupo(BeanGrupo oBeanGrupo) {
        this.oBeanGrupo = oBeanGrupo;
    }

    @Override
    public String toString() {
        return this.nombre; //To change body of generated methods, choose Tools | Templates.
    }
    
     
    
}
