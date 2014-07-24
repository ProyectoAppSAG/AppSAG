/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.Beans.BeanLocal;
import com.Beans.BeanOpcionMenu;
import com.Beans.BeanTipoUsuario;
import com.Beans.BeanUsuario;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Usuario
 */
public class DAOUsuario extends DAO {

    public DAOUsuario() {
        super();
    }

    public Object logIn(String nick, String password) throws Exception {
        try {
            String sql = "select * from logIn(?,?)";
            BeanUsuario beanUsuario = null;
            List<Parametro> parametros=new ArrayList<Parametro>();
            parametros.add(new Parametro(nick,Types.VARCHAR));
            parametros.add(new Parametro(password,Types.VARCHAR));
            this.Conexion();
            ResultSet rs = this.ejecutarProcedimientoDatos(sql, parametros);
            Object object = null;
            if (rs.next()) {
                beanUsuario = new BeanUsuario();
                beanUsuario.setId(rs.getInt("tb_usuario_id"));
                beanUsuario.setNick(rs.getString("tb_usuario_nic"));
                beanUsuario.setPassword(rs.getString("tb_usuario_pas"));
                beanUsuario.setEstadoConexion(rs.getString("tb_usuario_est_cnx"));
                beanUsuario.setEstado(rs.getString("tb_usuario_est"));
                beanUsuario.setUltimoAcceso(rs.getDate("tb_usuario_ult_acc"));
                beanUsuario.setoTipoUsuario(new BeanTipoUsuario(rs.getInt("tb_tipousuario_id")));
                beanUsuario.setoLocal(new BeanLocal(rs.getInt("tb_local_id")));
                if (beanUsuario.getEstado().equals("H")) {
                    if (beanUsuario.getEstadoConexion().equals("D")) {
                        beanUsuario.setOpcionesMenu(listaOpcionesMenu(beanUsuario.getoTipoUsuario()));
                        object=beanUsuario;
                    } else {
                        object = "Usted está conectado desde otro Dispositivo";
                    }
                } else {
                    object = "Usted no tiene Acceso al Sistema";
                }

            }
            else{
                object="0";
            }

            return object;

        } catch (Exception e) {
            throw e;
        } 
    }

    public List<BeanOpcionMenu> listaOpcionesMenu(BeanTipoUsuario beanTipoUsuario) throws Exception {
        try {
            String sql = "select * from consulta_opcionmenu(?,?)";
            List<Parametro> parametros = new ArrayList<Parametro>();
            parametros.add(new Parametro(null, Types.INTEGER));
            parametros.add(new Parametro(beanTipoUsuario.getId(), Types.INTEGER));

            List<BeanOpcionMenu> opcionesMenu = getOpcionesMenu(sql, parametros);
            for(BeanOpcionMenu bom:opcionesMenu){
                parametros.get(0).setValor(bom.getId());
                bom.setSubMenus(getOpcionesMenu(sql, parametros));
            }
            return opcionesMenu;
        } catch (Exception e) {
            throw e;
        }
    }

    public List<BeanOpcionMenu> getOpcionesMenu(String sql, List<Parametro> parametros) throws Exception {
        try {
            List<BeanOpcionMenu> opcionesMenu = new ArrayList<BeanOpcionMenu>();

            ResultSet rs = this.ejecutarProcedimientoDatos(sql, parametros);
            while (rs.next()) {
                BeanOpcionMenu bom = new BeanOpcionMenu();
                bom.setId(rs.getInt("tb_opcionmenu_id"));
                bom.setNombre(rs.getString("tb_opcionmenu_nom"));
                bom.setEstado(rs.getString("tb_opcionmenu_est"));
                bom.setLink(rs.getString("tb_opcionmenu_lin"));
                bom.setIcono(rs.getString("tb_opcionmenu_ico"));
                bom.setoOpcionMenu(new BeanOpcionMenu(rs.getInt("tb_opcionmenu_id_ref")));
                opcionesMenu.add(bom);
            }
            return opcionesMenu;
        } catch (Exception e) {
            throw e;
        }
    }
    

}
