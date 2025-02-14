<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String jdbcURL = "jdbc:mysql://localhost:3306/manager"; 
    String dbUser = "root"; 
    String dbPassword = "krrish@001#400"; 
    Connection conn = null;

    if (request.getParameter("update") != null) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        double ctc = Double.parseDouble(request.getParameter("ctc"));
        String position = request.getParameter("position");
        String department = request.getParameter("department");
        String age = request.getParameter("age");
        String experience = request.getParameter("experience");
        String years_at_company = request.getParameter("years_at_company");
        String marital_status = request.getParameter("marital_status");


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            String sqlUpdate = "UPDATE employees SET name=?, email=?, phone=?, ctc=?, position=?, department=?, age=?, experience=?, years_at_company=?, marital_status=? WHERE id=?";
            PreparedStatement statement = conn.prepareStatement(sqlUpdate);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setDouble(4, ctc);
            statement.setString(5, position);
            statement.setString(6, department);
            statement.setString(7, age);
            statement.setString(8, experience);
            statement.setString(9, years_at_company);
            statement.setString(10, marital_status);
            statement.setInt(11, id);


            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                out.println("<script>alert('Employee updated successfully!');</script>");
            } else {
                out.println("<script>alert('Error updating employee.');</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) conn.close();
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Employee</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .save-btn {
            background-color: #28a745;
            color: white;
        }
        .save-btn:hover {
            background-color: #218838;
            color: white;
        }
        

:root {
    --primary-color: #f1eee9;
    --secondary-color: #f54725;
    --tertiary-color: #f9d678;
    --text-dark: #13313c;
    --text-light: #475569;
    --white: #ffffff;
    --max-width: 1200px;
    --header-font: "Rubik", sans-serif;
    --total-brand: 14;
    --logo-width: 12rem;
    --total-logo-width: calc(var(--total-brand) * var(--logo-width) * 2);
    --animation-duration: calc(var(--total-brand) * 5s);
}
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    outline: none;
}

body {
    overflow-x: hidden;
    width: 100%;
}

#checkbox{
	display: none;
}
.signup {
    margin-right: 1.8rem;
    border-radius: 2rem;
    border: 1.5px solid transparent;
    background: #4227dd;
    color: #ffffff;
    font-family: "Work Sans", sans-serif;
    font-optical-sizing: auto;
    font-weight: 600;
    font-style: normal;
}

.signup:hover {
    background: #341cba;
    color: #ffffff;
}
.card-img, .card-img-top{
	height: 350px;
}
.profile{
	margin-right: 1.8rem;
    border-radius: 2rem;
    border: 1.5px solid transparent;
    color: #ffffff;
    font-family: "Work Sans", sans-serif;
    font-optical-sizing: auto;
    font-weight: 600;
    font-style: normal;
}
.notification{
	margin-right: 2rem;
    border-radius: 2rem;
    border: 1.5px solid transparent;
    color: #ffffff;
    font-family: "Work Sans", sans-serif;
    font-optical-sizing: auto;
    font-weight: 600;
    font-style: normal;
}
.login {
    margin-right: 0.8rem;
    border-radius: 2rem;
    border: 1.8px solid #b0b0b0;
    color: #000;
    font-family: "Work Sans", sans-serif;
    font-optical-sizing: auto;
    font-weight: 600;
    font-style: normal;
}

.login:hover {
    border: 1.8px solid #a7a7a7b7;
    background: #f1efef;
    color: #000;
}

span {
    color: #4227dd;
}

.link_group {
    margin-left: auto;
}

.link_item {
    margin-right: 2rem;
    font-family: "Work Sans", sans-serif;
    font-optical-sizing: auto;
    font-weight: 600;
    font-style: normal;
    text-decoration: none;
    position: relative;
}

.link_item:after {
    content: "";
    position: absolute;
    background-color: #4227dd;
    height: 3px;
    width: 0;
    left: 0;
    bottom: -0px;
    transition: 0.3s;
}

.link_item:hover:after {
    width: 100%;
}

.navbar-light .navbar-nav .active>.nav-link,
.navbar-light .navbar-nav .nav-link.active,
.navbar-light .navbar-nav .nav-link.show,
.navbar-light .navbar-nav .show>.nav-link {
    color: #000;
}

#checkbox {
    display: none;
}

.toggle {
    position: relative;
    width: 24px;
    height: calc(2px * 3 + 8px * 2);
    cursor: pointer;
    margin: auto;
    display: block;
}

.bar {
    position: absolute;
    left: 0;
    right: 0;
    height: 2px;
    border-radius: calc(2px / 2);
    background: #000;
    color: inherit;
    opacity: 1;
    transition: none 0.35s cubic-bezier(.5, -0.35, .35, 1.5) 0s;
}

.bar--top {
    bottom: calc(50% + 8px + 2px / 2);
    transition-property: bottom, margin, transform;
    transition-delay: calc(0s + 0.35s), 0s, 0s;
}

.bar--middle {
    top: calc(50% - 2px / 2);
    transition-property: top, opacity;
    transition-duration: 0.35s, 0s;
    transition-delay: calc(0s + 0.35s * 1.3), calc(0s + 0.35s * 1.3);
}

.bar--bottom {
    top: calc(50% + 8px + 2px / 2);
    transition-property: top, transform;
    transition-delay: 0s;
}

#checkbox:checked+.toggle .bar--top {
    bottom: calc(50% - 8px - 2px);
    margin-bottom: calc(8px + 2px / 2);
    transform: rotate(45deg);
    transition-delay: calc(0s + 0.35s * .3), calc(0s + 0.35s * 1.3), calc(0s + 0.35s * 1.3);
}

#checkbox:checked+.toggle .bar--middle {
    top: calc(50% + 8px);
    opacity: 0;
    transition-duration: 0.35s, 0s;
    transition-delay: 0s, calc(0s + 0.35s);
}

#checkbox:checked+.toggle .bar--bottom {
    top: calc(50% - 2px / 2);
    transform: rotate(-45deg);
    transition-delay: calc(0s + 0.35s * 1.3), calc(0s + 0.35s * 1.3);
}

.navbar-light .navbar-brand {
    color: #000;
}

.navbar-brand {
    font-size: 26px;
    font-family: "Work Sans", sans-serif;
    font-optical-sizing: auto;
    font-weight: 800;
    font-style: normal;
}

.logo_color {
    color: #000;
}

.navbar-light .navbar-toggler-icon {
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='1.2em' height='1.2em' viewBox='0 0 256 256'%3E%3Cpath fill='white' d='M228 128a12 12 0 0 1-12 12H40a12 12 0 0 1 0-24h176a12 12 0 0 1 12 12M40 76h176a12 12 0 0 0 0-24H40a12 12 0 0 0 0 24m176 104H40a12 12 0 0 0 0 24h176a12 12 0 0 0 0-24'/%3E%3C/svg%3E");
}

.login-btn{
    color: #000;
}
.login-btn:hover{
    text-decoration: none;
    color: #000;
}

.signup-btn{
    color: #ffffff;
}
.signup-btn:hover{
    text-decoration: none;
    color: #ffffff;
}

        .save-btn{
        	background-color: #06A246;
        	color: white;
        }
        
        .save-btn:hover{
        	background-color: ##07883C;
        	color: white;
        }
        
        
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand" href="managerpage.jsp"><span class="logo_color">Tech</span><span>Fusion</span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <div id="menuToggle">
      <input id="checkbox" type="checkbox">
      <label class="toggle" for="checkbox">
        <div class="bar bar--top"></div>
        <div class="bar bar--middle"></div>
        <div class="bar bar--bottom"></div>
      </label>
    </div>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto link_group">
      <li class="nav-item active">
        <a class="nav-link link_item" href="managerpage.jsp">Home</a>
      </li>
       <li class="nav-item active">
        <a class="nav-link link_item" href="emplymanage.jsp">Employee Management</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link link_item" href="resources.jsp">Tasks & Projects</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link link_item" href="pricing.jsp">Reports</a>
      </li>
    </ul>
     <form class="form-inline my-2 my-lg-0">
      <button class="btnn btn" type="submit" data-toggle="tooltip" data-placement="bottom" title="Profile"><a href="#" class="signup-btn"><i class="fa-solid fa-user" style="color: #000000;"></i></a></button>
    </form>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <form class="form-inline my-2 my-lg-0">
      <button class="btnnn btn" type="submit" data-toggle="tooltip" data-placement="bottom" title="Notification"><a href="#" class="signup-btn"><i class="fa-solid fa-bell" style="color: #000000;"></i></a></button>
    </form>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <form class="form-inline my-2 my-lg-0">
      <button class="btn signup" type="submit"><a href="Logout" class="signup-btn">Log Out</a></button>
    </form>
  </div>
</nav>



	<br>
	<br>
	
	
	
    <div class="container header">
        <center><h2>Update Employee Details</h2></center>
        
        <br><br>
        <div class="row">
            <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                    String sql = "SELECT * FROM employees";
                    Statement statement = conn.createStatement();
                    ResultSet resultSet = statement.executeQuery(sql);

                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String name = resultSet.getString("name");
                        String email = resultSet.getString("email");
                        String phone = resultSet.getString("phone");
                        double ctc = resultSet.getDouble("ctc");
                        String position = resultSet.getString("position");
                        String department = resultSet.getString("department");
                        String age = resultSet.getString("age");
                        String experience = resultSet.getString("experience");
                        String years_at_company = resultSet.getString("years_at_company");
                        String marital_status = resultSet.getString("marital_status");
                        Blob imageBlob = resultSet.getBlob("image");
                        byte[] imageData = imageBlob.getBytes(1, (int) imageBlob.length());
            %>
                        <div class="col-md-4">
                            <div class="card mb-4">
                                <img class="card-img-top" src="data:image/jpeg;base64,<%= java.util.Base64.getEncoder().encodeToString(imageData) %>" alt="Employee Image">
                                <div class="card-body">
                                    <h5 class="card-title">Employee ID: <%= id %></h5>
                                    <form method="post" action="update.jsp">
                                        <input type="hidden" name="id" value="<%= id %>">
                                        <input type="hidden" name="update" value="true">
                                        
                                        <label>Name:</label>
                                        <input type="text" name="name" class="form-control" value="<%= name %>">
                                        
                                        <label>Email:</label>
                                        <input type="text" name="email" class="form-control" value="<%= email %>">
                                        
                                        <label>Phone:</label>
                                        <input type="text" name="phone" class="form-control" value="<%= phone %>">
                                        
                                        <label>CTC:</label>
                                        <input type="text" name="ctc" class="form-control" value="<%= ctc %>">
                                        
                                        <label>Position:</label>
                                        <input type="text" name="position" class="form-control" value="<%= position %>">
                                        
                                        <label>Department:</label>
                                        <input type="text" name="department" class="form-control" value="<%= department %>">
                                        
                                         <label>Age:</label>
                                        <input type="text" name="age" class="form-control" value="<%= age %>">
                                        
                                         <label>Experience:</label>
                                        <input type="text" name="experience" class="form-control" value="<%= experience %>">
                                        
                                         <label>Years At TechFusion:</label>
                                        <input type="text" name="years_at_company" class="form-control" value="<%= years_at_company %>">
                                        
                                         <label>Marital Status:</label>
                                        <input type="text" name="marital_status" class="form-control" value="<%= marital_status %>">
                                        
                                        <br>
                                        <button type="submit" class="btn save-btn">Update Employee</button>
                                    </form>
                                </div>
                            </div>
                        </div>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (conn != null) conn.close();
                }
            %>
        </div>
    </div>
</body>
</html>
