package com.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/TeamServlet")
@MultipartConfig
public class TeamServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tid = request.getParameter("tid");
        String name = request.getParameter("name");
        String namelead = request.getParameter("namelead");
        String email = request.getParameter("email");
        String task = request.getParameter("task");
        String assign = request.getParameter("assign");
        String deadline = request.getParameter("deadline");
        String size = request.getParameter("size");
        String department = request.getParameter("department");
        Part imagePart = request.getPart("image");

        InputStream inputStream = null;
        if (imagePart != null) {
            inputStream = imagePart.getInputStream();
        }

        Connection conn = null;
        String jdbcURL = "jdbc:mysql://localhost:3306/manager"; 
        String dbUser = "root"; 
        String dbPassword = "krrish@001#400";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            String sql = "INSERT INTO team (tid, name, namelead, email, task, assign, deadline, size, department, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, tid);
            statement.setString(2, name);
            statement.setString(3, namelead);
            statement.setString(4, email);
            statement.setString(5, task);
            statement.setString(6, assign);
            statement.setString(7, deadline);
            statement.setString(8, size);
            statement.setString(9, department);
            statement.setBlob(10, inputStream);

            int row = statement.executeUpdate();
            if (row > 0) {
                response.setContentType("text/plain");
                response.getWriter().write("Team added successfully");
            } else {
                response.setContentType("text/plain");
                response.getWriter().write("Failed to add team");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/plain");
            response.getWriter().write("Error adding team: " + e.getMessage());
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
