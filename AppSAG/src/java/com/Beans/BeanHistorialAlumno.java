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
public class BeanHistorialAlumno {
    
    private Integer id;
    private Double puntajeSimulacro;
    private String estado;
    private BeanMatricula oBeanMatricula;
    private BeanSimulacro oBeanSimulacro;
    private BeanAulaTurno oBeanAulaTurno;

    public BeanHistorialAlumno() {
    }

    public BeanHistorialAlumno(Integer id) {
        this.id = id;
    }

    public BeanHistorialAlumno(Integer id, Double puntajeSimulacro, String estado, BeanMatricula oBeanMatricula, BeanSimulacro oBeanSimulacro, BeanAulaTurno oBeanAulaTurno) {
        this.id = id;
        this.puntajeSimulacro = puntajeSimulacro;
        this.estado = estado;
        this.oBeanMatricula = oBeanMatricula;
        this.oBeanSimulacro = oBeanSimulacro;
        this.oBeanAulaTurno = oBeanAulaTurno;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getPuntajeSimulacro() {
        return puntajeSimulacro;
    }

    public void setPuntajeSimulacro(Double puntajeSimulacro) {
        this.puntajeSimulacro = puntajeSimulacro;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public BeanMatricula getoBeanMatricula() {
        return oBeanMatricula;
    }

    public void setoBeanMatricula(BeanMatricula oBeanMatricula) {
        this.oBeanMatricula = oBeanMatricula;
    }

    public BeanSimulacro getoBeanSimulacro() {
        return oBeanSimulacro;
    }

    public void setoBeanSimulacro(BeanSimulacro oBeanSimulacro) {
        this.oBeanSimulacro = oBeanSimulacro;
    }

    public BeanAulaTurno getoBeanAulaTurno() {
        return oBeanAulaTurno;
    }

    public void setoBeanAulaTurno(BeanAulaTurno oBeanAulaTurno) {
        this.oBeanAulaTurno = oBeanAulaTurno;
    }

    @Override
    public String toString() {
        return this.oBeanMatricula+" - "+this.puntajeSimulacro; //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
