/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servidores;

import Usuarios.Usuario;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author stive
 */
public class UsuarioAdmin extends HttpServlet {

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

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pagina = request.getParameter("pagina");

        if (pagina.equals("Menu_admi")) {
            //Creacion de la conexion de la base de datos
            Connection conexion = null;
            //Bus para transportar a los "usuarios"
            ArrayList<Usuario> array_usuario = new ArrayList<Usuario>();

            String nombre, apellido, nombreUsuario, correo, contrasena, perfil;

            try {
                //llama el metodo para usar el jdbc
                Class.forName("oracle.jdc.OracleDriver");

                try {
                    //Cadena de conexion

                    conexion = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "EcoayudaAdmin", "1234");

                    //Metodo para crear consultas en la base de datos
                    Statement sentencia_sql = conexion.createStatement();
                    // hace un select en la base de  datos
                    ResultSet usuario = sentencia_sql.executeQuery("select * from usuario");

                    //Sacar todos los clientes 
                    while (usuario.next()) {
                        nombre = usuario.getString("nombre_usuario");
                        apellido = usuario.getString("apellido_usuario");
                        nombreUsuario = usuario.getString("nombre_de_usuario_usuario");
                        correo = usuario.getString("email_usuario");
                        contrasena = usuario.getString("contrasena_usuario");
                        perfil = usuario.getString("perfil_usuario");

                        array_usuario.add(new Usuario(nombre, apellido, nombreUsuario, correo, contrasena, perfil));

                    }
                    conexion.close();
                    //eventos indeciados e inesperados 
                    
                    //informacion de erorores enla base de datos
                } catch (SQLException ex) {
                    System.out.println(ex.getStackTrace());
                }

            } catch (ClassNotFoundException ex) {
                System.out.println(ex.getStackTrace());
            }
            
            request.setAttribute("usuarios",array_usuario);
            RequestDispatcher despachador = request.getRequestDispatcher("UsuariosAdmin.jsp");
            despachador.forward(request, response);

        } else if (pagina.equals("UsuariosAdmin")) {

            RequestDispatcher despachador = request.getRequestDispatcher("Menu_admi.jsp");

            despachador.forward(request, response);

        }
    }

}
