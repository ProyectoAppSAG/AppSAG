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
public class BeanAlumno {
    
    private String codigo;
    private String apePaterno;
    private String apeMaterno;
    private String nombre;
    private String sexo;
    private String direccion;
    private String telefono;
    private String rutaFoto;
    private String email;
    private String dni;
    private Date fechaRegistro;
    private String estado;

    public BeanAlumno() {
    }

    public BeanAlumno(String codigo) {
        this.codigo = codigo;
    }

    public BeanAlumno(String codigo, String apePaterno, String apeMaterno, String nombre, String sexo, String direccion, String telefono, String rutaFoto, String email, String dni, Date fechaRegistro, String estado) {
        this.codigo = codigo;
        this.apePaterno = apePaterno;
        this.apeMaterno = apeMaterno;
        this.nombre = nombre;
        this.sexo = sexo;
        this.direccion = direccion;
        this.telefono = telefono;
        this.rutaFoto = rutaFoto;
        this.email = email;
        this.dni = dni;
        this.fechaRegistro = fechaRegistro;
        this.estado = estado;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getApePaterno() {
        return apePaterno;
    }

    public void setApePaterno(String apePaterno) {
        this.apePaterno = apePaterno;
    }

    public String getApeMaterno() {
        return apeMaterno;
    }

    public void setApeMaterno(String apeMaterno) {
        this.apeMaterno = apeMaterno;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getRutaFoto() {
        return rutaFoto;
    }

    public void setRutaFoto(String rutaFoto) {
        this.rutaFoto = rutaFoto;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    @Override
    public String toString() {
        return "["+this.codigo+"] "+this.apePaterno+" "+this.apeMaterno+" "+this.nombre; //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
}
