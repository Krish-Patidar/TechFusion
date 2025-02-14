<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    Connection conn = null;
    String jdbcURL = "jdbc:mysql://localhost:3306/manager"; 
    String dbUser = "root"; 
    String dbPassword = "krrish@001#400"; 

    String id = request.getParameter("id");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
        String sql = "DELETE FROM team WHERE id = ?";
        PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setInt(1, Integer.parseInt(id));
        int rowsAffected = preparedStatement.executeUpdate();

        if (rowsAffected > 0) {
            response.getWriter().write("Success");
        } else {
            response.getWriter().write("Error");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.getWriter().write("Error");
    } finally {
        try {
            if (conn != null) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
