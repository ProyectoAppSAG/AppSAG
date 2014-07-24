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
public class BeanResultadoExamen {
    
    private Integer id;
    private Double puntajeMinimo;
    private Double puntajeMaximo;
    private BeanEscuela oBeanEscuela;
    private BeanCiclo oBeanCiclo;

    public BeanResultadoExamen() {
    }

    public BeanResultadoExamen(Integer id) {
        this.id = id;
    }

    public BeanResultadoExamen(Integer id, Double puntajeMinimo, Double puntajeMaximo, BeanEscuela oBeanEscuela, BeanCiclo oBeanCiclo) {
        this.id = id;
        this.puntajeMinimo = puntajeMinimo;
        this.puntajeMaximo = puntajeMaximo;
        this.oBeanEscuela = oBeanEscuela;
        this.oBeanCiclo = oBeanCiclo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getPuntajeMinimo() {
        return puntajeMinimo;
    }

    public void setPuntajeMinimo(Double puntajeMinimo) {
        this.puntajeMinimo = puntajeMinimo;
    }

    public Double getPuntajeMaximo() {
        return puntajeMaximo;
    }

    public void setPuntajeMaximo(Double puntajeMaximo) {
        this.puntajeMaximo = puntajeMaximo;
    }

    public BeanEscuela getoBeanEscuela() {
        return oBeanEscuela;
    }

    public void setoBeanEscuela(BeanEscuela oBeanEscuela) {
        this.oBeanEscuela = oBeanEscuela;
    }

    public BeanCiclo getoBeanCiclo() {
        return oBeanCiclo;
    }

    public void setoBeanCiclo(BeanCiclo oBeanCiclo) {
        this.oBeanCiclo = oBeanCiclo;
    }

    @Override
    public String toString() {
        return this.oBeanCiclo+" - "+this.oBeanCiclo+" - "+this.puntajeMinimo+" - "+this.puntajeMaximo; //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
