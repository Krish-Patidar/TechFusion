package com.controller; 

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TeamDAO {

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

   
    public int getTeamCount() throws SQLException {
        String query = "SELECT COUNT(*) FROM team"; 
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

}
