<%-- 
    Document   : Conexion
    Created on : 7/11/2021, 05:12:42 PM
    Author     : stive
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.Connection"
        import="java.sql.DriverManager"
        import="java.sql.ResultSet"
        import="java.sql.Statement"
        import="java.sql.SQLException"
        %>

<%
    Connection conex =null;
    Statement sql =null;
    
    try{
         Class.forName("com.mysql.jdbc.Driver");
         conex=(Connection)DriverManager.getConnection("jdbc:mysql://127.0.0.1/ecoayuda","root","");
         sql = conex.createStatement();
         out.print("Conexion establecida ");
    
                     

    }catch (Exception e){
    
    out.print("Error en la conexion"+ e);
    }
    
    %>