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
public class BeanLocal {
    
    private Integer id;
    private String nombre;
    private String telefono;
    private String direccion;
    private String estado;

    public BeanLocal() {
    }

    public BeanLocal(Integer id) {
        this.id = id;
    }

    public BeanLocal(Integer id, String nombre, String telefono, String direccion, String estado) {
        this.id = id;
        this.nombre = nombre;
        this.telefono = telefono;
        this.direccion = direccion;
        this.estado = estado;
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

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return this.nombre; //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
}
