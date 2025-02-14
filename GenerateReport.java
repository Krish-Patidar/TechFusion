package com.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/GenerateReport")
public class GenerateReport extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reportType = request.getParameter("reportType"); 
        int timeFrame = Integer.parseInt(request.getParameter("timeFrame")); 

        String query = "";
        String column = reportType.equals("added") ? "created_at" : "deleted_at";
        if (reportType.equals("added")) {
            query = "SELECT COUNT(*) FROM employees WHERE " + column + " >= NOW() - INTERVAL ? DAY";
        } else if (reportType.equals("deleted")) {
            query = "SELECT COUNT(*) FROM employees WHERE " + column + " IS NOT NULL AND " + column + " >= NOW() - INTERVAL ? DAY";
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/manager", "root", "krrish@001#400");
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, timeFrame);
            ResultSet resultSet = stmt.executeQuery();

            int count = 0;
            if (resultSet.next()) {
                count = resultSet.getInt(1);
            }

            String resultMessage = "&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of employees " + (reportType.equals("added") ? "added" : "deleted") +
                    " in the past " + timeFrame + " days: " + count;

            request.setAttribute("reportResult", resultMessage);
            resultSet.close();
            stmt.close();
            conn.close();

            request.getRequestDispatcher("report.jsp").forward(request, response); 
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while generating the report.");
        }
    }
}
