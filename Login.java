package com.controller;

import jakarta.servlet.RequestDispatcher;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/manager", "root", "krrish@001#400");
            String n = request.getParameter("txtName");
            String p = request.getParameter("txtPwd");
            PreparedStatement ps = con.prepareStatement("select username from adminLogin where username=? and password=?");
            ps.setString(1, n);
            ps.setString(2, p);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
            	 HttpSession session = request.getSession();
            	    session.setAttribute("username", n);
                RequestDispatcher rd = request.getRequestDispatcher("managerpage.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("errorMessage", "Incorrect UserId or Password");
                RequestDispatcher rd = request.getRequestDispatcher("managerlogin.jsp");
                rd.forward(request, response);
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
       
        } catch (SQLException e) {
        	e.printStackTrace();
        }
    }
}
