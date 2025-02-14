package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployeeDAO {

    private final String jdbcURL = "jdbc:mysql://localhost:3306/manager"; 
    private final String jdbcUsername = "root";                       
    private final String jdbcPassword = "krrish@001#400";                        

    public Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }


    public void addEmployee(String name, String role, double salary) throws SQLException {
        String query = "INSERT INTO employees (name, role, salary) VALUES (?, ?, ?)";
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, name);
            stmt.setString(2, role);
            stmt.setDouble(3, salary);
            stmt.executeUpdate();
        }
    }


    public int getEmployeeCount() throws SQLException {
        String query = "SELECT COUNT(*) FROM employees"; 
        int count = 0;
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                count = rs.getInt(1); 
            }
        }
        return count;
    }


    public Employee getEmployeeById(int id) throws SQLException {
        String query = "SELECT * FROM employees WHERE id = ?";
        Employee employee = null;
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    String name = rs.getString("name");
                    String role = rs.getString("role");
                    double salary = rs.getDouble("salary");
                    employee = new Employee(id, name, role, salary);
                }
            }
        }
        return employee;
    }
}
