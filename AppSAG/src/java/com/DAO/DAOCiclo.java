package com.DAO;


import com.Beans.BeanCiclo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DAOCiclo extends DAO{
    
    
    public DAOCiclo() {
        super();
    }
    
    public List<BeanCiclo> listarCiclo(String codigo,Date fecha)throws Exception{
        List<BeanCiclo> lista =new ArrayList<BeanCiclo>();
        try {
            String sql="select * from consulta_ciclo(?,?);";
            
            List<Parametro> parametros=new ArrayList<Parametro>();
            parametros.add(new Parametro("ciclo_cod",codigo,Types.VARCHAR));
            parametros.add(new Parametro("ciclo_fec",fecha,Types.DATE));
            
            this.Conexion();
            ResultSet rs=this.ejecutarProcedimientoDatos(sql, parametros);
            while (rs.next()) {
                BeanCiclo beanCiclo=new BeanCiclo();
                beanCiclo.setCodigo(rs.getString("tb_ciclo_cod"));
                beanCiclo.setFechaInicio(rs.getDate("tb_ciclo_fec_ini"));
                beanCiclo.setFechaFin(rs.getDate("tb_ciclo_fec_fin"));
                beanCiclo.setPrecioBase(rs.getDouble("tb_ciclo_pre_bas"));
                lista.add(beanCiclo);
            }
            return lista;
        } catch (SQLException e) {
           throw e;
        }
        finally{
            this.close();
        }
    }
//    public  boolean iudCiclo(BeanCiclo oCiclo){
//        boolean respuesta =false;
//        try {
//            sp= conn.prepareCall("select iudCiclo(?,?,?,?)") ;
//            sp.setObject(1, oCiclo.getId());
//            sp.setObject(2, oCiclo.getDescripcion());
//            sp.setObject(3, oCiclo.getEstado());
//            sp.setObject(4, oCiclo.getAccion());
//            ResultSet rs=sp.executeQuery();
//            while (rs.next()) {
//                respuesta=rs.getBoolean(1);
//            }
//        } catch(SQLException e) {
//            log.fatal(e.getMessage());
//        }
//        return respuesta ;
//    }
//    
//    public  BeanCiclo getCiclo(Integer codCiclo){
//        BeanCiclo oCiclo = new BeanCiclo();
//        try {
//            String sql="select"
//                    + " \"public\".tb_ciclo.tb_ciclo_cod,"
//                    + " \"public\".tb_ciclo.tb_ciclo_fec_ini,"
//                    + " \"public\".tb_ciclo.tb_ciclo_est"
//                    + " from \"public\".tb_ciclo"
//                    + " where \"public\".tb_ciclo.tb_ciclo_cod = ?";
//            log.info(sql);
//            sp =conn.prepareCall(sql);
//            sp.setInt(1,codCiclo);
//            ResultSet rs= sp.executeQuery();
//            while (rs.next()) {
//                oCiclo.setId(rs.getInt("tb_ciclo_cod"));
//                oCiclo.setDescripcion(rs.getString("tb_ciclo_fec_ini"));
//                oCiclo.setEstado(rs.getString("tb_ciclo_est"));
//            }
//        } catch (SQLException e) {
//           log.fatal(e.getMessage());
//        }
//        return oCiclo;
//    }
}
