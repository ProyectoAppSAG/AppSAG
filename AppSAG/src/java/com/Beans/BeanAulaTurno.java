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
public class BeanAulaTurno {
    
    private Integer id;
    private BeanAula oBeanAula;
    private BeanTurno oBeanTurno;
    private BeanNivel oBeanNivel;
    private BeanGrupo oBeanGrupo;

    public BeanAulaTurno() {
    }

    public BeanAulaTurno(Integer id) {
        this.id = id;
    }

    public BeanAulaTurno(Integer id, BeanAula oBeanAula, BeanTurno oBeanTurno, BeanNivel oBeanNivel, BeanGrupo oBeanGrupo) {
        this.id = id;
        this.oBeanAula = oBeanAula;
        this.oBeanTurno = oBeanTurno;
        this.oBeanNivel = oBeanNivel;
        this.oBeanGrupo = oBeanGrupo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public BeanAula getoBeanAula() {
        return oBeanAula;
    }

    public void setoBeanAula(BeanAula oBeanAula) {
        this.oBeanAula = oBeanAula;
    }

    public BeanTurno getoBeanTurno() {
        return oBeanTurno;
    }

    public void setoBeanTurno(BeanTurno oBeanTurno) {
        this.oBeanTurno = oBeanTurno;
    }

    public BeanNivel getoBeanNivel() {
        return oBeanNivel;
    }

    public void setoBeanNivel(BeanNivel oBeanNivel) {
        this.oBeanNivel = oBeanNivel;
    }

    public BeanGrupo getoBeanGrupo() {
        return oBeanGrupo;
    }

    public void setoBeanGrupo(BeanGrupo oBeanGrupo) {
        this.oBeanGrupo = oBeanGrupo;
    }

    @Override
    public String toString() {
        return this.oBeanAula+" - "+this.oBeanGrupo+" - "+this.oBeanTurno+" - "+this.oBeanNivel;//To change body of generated methods, choose Tools | Templates.
    }
    
    
}
