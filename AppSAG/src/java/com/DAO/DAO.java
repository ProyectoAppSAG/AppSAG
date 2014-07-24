/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Usuario
 */
public class DAO {
    private Connection cnx;

    public DAO() {
    }

//    public DAO(Connection cnx) {
//        this.cnx = cnx;
//    }
    
    public Connection getConnection(){
        return cnx;
    }
    
    protected void Conexion() throws Exception 
    {
        String strHost;
        String strPort;
        String strDatabase;
        String strUser;
        String strPassword;
        String strCadenaConexion;
        try {
            strHost= "127.0.0.1";
            strPort= "5432";
            strDatabase= "db_SAG";
            strUser= "user_SAG";
            strPassword= "user_SAG";
            strCadenaConexion = "jdbc:postgresql://" + strHost + ":" + strPort + "/" + strDatabase;
            Class.forName("org.postgresql.Driver");
            cnx = DriverManager.getConnection(strCadenaConexion,strUser,strPassword);
        }
        catch(Exception ex) {               
            throw new Exception("ERROR ===> " + ex.getMessage());
        }
    }
    protected void EjecutaSQL(String sql)throws Exception
    {
        PreparedStatement ps;
        try{
            ps = cnx.prepareCall(sql);
            ps.execute();
        }catch(Exception ex){
            throw ex;
        }
    }
    
    protected ResultSet RecuperaSQL(String sql)throws Exception
    {
        PreparedStatement ps;
        ResultSet rs;
        try{
            ps = cnx.prepareCall(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs = ps.executeQuery();
            return rs;
        }catch(Exception ex){
            throw ex;
        }
    }
    
    protected boolean ejecutarProcedimiento(String sql,Map<String,Object> parametros)throws Exception{
        try {
            CallableStatement cs=cnx.prepareCall(sql);
            for (Map.Entry p : parametros.entrySet()) {
                cs.setObject(p.getKey().toString(), p.getValue());
            }
           return cs.execute();
        } catch (SQLException e) {
            throw e;
        }
    }
    
    protected ResultSet ejecutarProcedimientoDatos(String sql,List<Parametro> parametros)throws Exception{
        try {
            CallableStatement cs=cnx.prepareCall(sql);
            int i=1;
            for (Parametro p:parametros) {
                cs.setObject(i, p.getValor(),p.getTipo());
                i++;
            }
           return cs.executeQuery();
        } catch (SQLException e) {
            throw e;
        }
    }

    
    protected void close()throws Exception{
        try {
            if(cnx!=null){
                if(!cnx.isClosed()){
                    cnx.close();
                }
            }
        } catch (Exception e) {
            throw e;
        }
    }
}
