/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Servlets;

import com.Beans.BeanUsuario;
import com.Logics.LogicUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "ServletUsuarios", urlPatterns = {"/ServletUsuarios"})
public class ServletUsuarios extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        try {
           String accion=request.getParameter("accion");
           if(accion.equals("logIn")){
              logIn(request,response);
           }
           
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ServletUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ServletUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void logIn(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String usuario=null;
            if(request.getParameter("usuario")!=null){
                usuario=request.getParameter("usuario");
            }
            else if(request.getParameter("codigo")!=null){
                usuario=request.getParameter("codigo");
            }
            String password=request.getParameter("password");
            LogicUsuario logicUsuario=new LogicUsuario();
            Object object=logicUsuario.logIn(usuario, password);
            if(object instanceof BeanUsuario){
                HttpSession session=request.getSession();
                session.setAttribute("sesUsuario",(BeanUsuario)object);
                request.getRequestDispatcher("home.jsp").forward(request, response);
            }
            else{
                String tipo=request.getParameter("tipo");
                if(object.equals("0")){
                    if(tipo.equals("usuario")){
                        object="El Usuario o Password son Incorrectos";
                    }
                    else{
                        object="El Código o Paswword son Incorrectos";
                    }
                }
                request.setAttribute("error", object);
                request.setAttribute("tipo" ,tipo);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            throw e;
        }
    }

    

}
