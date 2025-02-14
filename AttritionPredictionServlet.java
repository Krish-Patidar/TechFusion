package com.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import org.python.util.PythonInterpreter;

@WebServlet("/AttritionPredictionServlet")
public class AttritionPredictionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the employee ID from the form
        String employeeId = request.getParameter("employee_id");
        
        // Initialize the response
        String predictionResult = "Error in prediction";
        
        Connection connection = null;
        try {
            // Connect to MySQL database
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/manager", "root", "krris@001#400");
            
            // Query employee data
            String query = "SELECT age, experience, doj, years_at_company, job_satisfaction, marital_status FROM employees WHEREm id = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, employeeId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                // Extract employee data
                int age = rs.getInt("age");
                int experience = rs.getInt("experience");
                String doj = rs.getString("doj");
                int yearsAtCompany = rs.getInt("years_at_company");
                int jobSatisfaction = rs.getInt("job_satisfaction");
                String maritalStatus = rs.getString("marital_status");

                // Use Python to load the model and make predictions (you may need to install Jython or use a RESTful API for model)
                PythonInterpreter pythonInterpreter = new PythonInterpreter();
                pythonInterpreter.exec("import joblib");
                pythonInterpreter.exec("model = joblib.load('models/attrition_model.pkl')");
                
                // Convert data to a Python dictionary to pass to the model
                String pythonCode = String.format(
                    "data = [[%d, %d, %d, %d, '%s']]", age, experience, yearsAtCompany, jobSatisfaction, maritalStatus);
                pythonInterpreter.exec("import pandas as pd");
                pythonInterpreter.exec("data = pd.DataFrame(" + pythonCode + ", columns=['age', 'experience', 'years_at_company', 'job_satisfaction', 'marital_status'])");
                pythonInterpreter.exec("prediction = model.predict(data)");
                pythonInterpreter.exec("prediction_result = 'Attrition' if prediction[0] == 1 else 'No Attrition'");
                String result = pythonInterpreter.get("prediction_result", String.class);

                // Set prediction result to be displayed on result.jsp
                predictionResult = result;
            } else {
                predictionResult = "Employee not found.";
            }

            // Close the database connection
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            predictionResult = "Error occurred while fetching data or predicting.";
        }
        
        // Pass the result to the JSP page
        request.setAttribute("employeeId", employeeId);
        request.setAttribute("result", predictionResult);
        
        // Forward to result.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("attritionResult.jsp");
        dispatcher.forward(request, response);
    }
}
