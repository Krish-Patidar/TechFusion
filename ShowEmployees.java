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

@WebServlet("/ShowEmployees")
@MultipartConfig
public class ShowEmployees extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        double ctc = Double.parseDouble(request.getParameter("ctc"));
        String position = request.getParameter("position");
        String department = request.getParameter("department");
        String doj = request.getParameter("doj");
        String dob = request.getParameter("dob");
        Part imagePart = request.getPart("image");
        String age = request.getParameter("age");
        String experience = request.getParameter("experience");
        String job_satisfaction = request.getParameter("job_satisfaction");
        String years_at_company = request.getParameter("years_at_company");
        String marital_status = request.getParameter("marital_status");

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

            String sql = "INSERT INTO employees (name, email, phone, ctc, position, department, doj, dob, image, age, experience, job_satisfaction, years_at_company, marital_status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setDouble(4, ctc);
            statement.setString(5, position);
            statement.setString(6, department);
            statement.setString(7, doj);
            statement.setString(8, dob);
            statement.setBlob(9, inputStream);
            statement.setString(10, age);
            statement.setString(11, experience);
            statement.setString(12, job_satisfaction);
            statement.setString(13, years_at_company);
            statement.setString(14, marital_status);

            int row = statement.executeUpdate();
            if (row > 0) {
                response.sendRedirect("showEmployees.jsp"); 
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
