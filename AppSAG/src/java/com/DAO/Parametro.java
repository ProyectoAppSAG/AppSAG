/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.DAO;

/**
 *
 * @author Usuario
 */
public class Parametro {
    private String nombre;
    private Object valor;
    private int tipo;

    public Parametro() {
    }

    public Parametro(String nombre, Object valor) {
        this.nombre = nombre;
        this.valor = valor;
    }

    public Parametro(Object valor, int tipo) {
        this.valor = valor;
        this.tipo = tipo;
    }

    public Parametro(String nombre, Object valor, int tipo) {
        this.nombre = nombre;
        this.valor = valor;
        this.tipo = tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Object getValor() {
        return valor;
    }

    public void setValor(Object valor) {
        this.valor = valor;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
    
    
}
