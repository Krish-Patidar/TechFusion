<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    
    <title>Employees Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>

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
.card-img, .card-img-top {
	height: 350px;
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

    
        .card {
            border: 2px solid black;
            border-radius: 10px;
            transition: transform 0.5s;
        }

        .card:hover {
            transform: scale(1.05);
            cursor: pointer;
        }

        .delete-btn {
            background-color: #EC273C; 
            color: white;
        }
        .delete-btn:hover{
        	background-color: #C9081D;
        	 color: white;
        }

        /* Modal styles */
        .modal-header {
            background-color: #28a745;
            color: white;
        }
.InputContainer {
  display: flex;
  align-items: right;
  justify-content: right;
  background-color: rgb(255, 255, 255);
  border-radius: 10px;
  overflow: hidden;
  cursor: pointer;
  padding-left: 15px;
}

.input {
  width: 450px;
  height: 100%;
  border: none;
  outline: none;
  font-size: 0.9em;
  caret-color: rgb(255, 81, 0);
}

.labelforsearch {
  cursor: text;
  padding: 0px 12px;
}

.searchIcon {
  width: 13px;
}

.border {
  height: 40%;
  width: 1.3px;
  background-color: rgb(223, 223, 223);
}

.micIcon {
  width: 12px;
}

.micButton {
  padding: 0px 15px 0px 12px;
  border: none;
  background-color: transparent;
  height: 40px;
  cursor: pointer;
  transition-duration: 0.3s;
}

.searchIcon path {
  fill: rgb(114, 114, 114);
}

.micIcon path {
  fill: rgb(255, 81, 0);
}

.micButton:hover {
  background-color: rgb(255, 230, 230);
  transition-duration: 0.3s;
}
        
        .form-control{
        	border: 1px solid black;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

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
	
	
	
	
	 
    <div class="container">
   
        <h2 style="text-align: left;">Employees Details</h2> 
        
        <div class="InputContainer">
      <form class="form-inline mb-4">
    <input class="form-control mr-sm-2" 
    placeholder="Search Employee"
    id="searchInput"
    name="text"
    type="text"
    aria-label="Search"
  />
  <label class="labelforsearch" for="input">
    <svg class="searchIcon" viewBox="0 0 512 512">
      <path
        d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"
      ></path>
    </svg>
  </label>
  
    </form>    
      </div>
        
       <br><br><br>
        <div class="row">
            <%
            Connection conn = null;
            String jdbcURL = "jdbc:mysql://localhost:3306/manager"; 
            String dbUser = "root"; 
            String dbPassword = "krrish@001#400"; 
            String sql = "SELECT * FROM employees"; 
            
            try {
            	 Class.forName("com.mysql.cj.jdbc.Driver");
                 conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

                 PreparedStatement statement = conn.prepareStatement(sql);
                 ResultSet resultSet = statement.executeQuery();

                    while (resultSet.next()) {
                        int id = resultSet.getInt("id");
                        String name = resultSet.getString("name");
                        String email = resultSet.getString("email");
                        String phone = resultSet.getString("phone");
                        double ctc = resultSet.getDouble("ctc");
                        String position = resultSet.getString("position");
                        String department = resultSet.getString("department");
                        Date doj = resultSet.getDate("doj");
                        Date dob = resultSet.getDate("dob");
                        String age = resultSet.getString("age");
                        String experience = resultSet.getString("experience");
                        String job_satisfaction = resultSet.getString("job_satisfaction");
                        String years_at_company = resultSet.getString("years_at_company");
                        String marital_status = resultSet.getString("marital_status");
                        Blob imageBlob = resultSet.getBlob("image");
                        byte[] imageData = imageBlob.getBytes(1, (int) imageBlob.length());
            %>
            
            
                     <div class="col-md-4 employee-card" data-name="<%= name.toLowerCase() %>" id="employee-<%= id %>">
                        <div class="card mb-4">
                            <img class="card-img-top" src="data:image/jpeg;base64,<%= java.util.Base64.getEncoder().encodeToString(imageData) %>" alt="Employee Image">
                            <div class="card-body">
                                <h5 class="card-title"><%= name %></h5>
                                <p class="card-text">
                                    <strong>Email:</strong> <%= email %><br>
                                    <strong>Phone:</strong> <%= phone %><br>
                                    <strong>Salary (CTC):</strong> <%= ctc %><br>
                                    <strong>Position:</strong> <%= position %><br>
                                    <strong>Department:</strong> <%= department %><br>
                                    <strong>Date of Joining:</strong> <%= doj %><br>
                                    <strong>Date of Birth:</strong> <%= dob %><br>
                                                                        <strong>Age:</strong> <%= age %><br>
                                                                        <strong>Experience:</strong> <%= experience %><br>
                                                                        <strong>Job Satisfaction (1-5):</strong> <%= job_satisfaction %><br>
                                                                        <strong>Years At TechFusion:</strong> <%= years_at_company %><br>
                                                                         <strong>Marital Status:</strong> <%= marital_status %><br>
                                                                        
                                    
                                </p>
                            </div>
                        </div>
                    </div>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
            }
        %>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    document.getElementById("searchInput").addEventListener("input", function() {
        let filter = this.value.toLowerCase();
        let employeeCards = document.getElementsByClassName("employee-card");

        Array.from(employeeCards).forEach(function(card) {
            let name = card.getAttribute("data-name");
            if (name.includes(filter)) {
                card.style.display = ""; 
            } else {
                card.style.display = "none"; 
            }
        });
    });
</script>


</body>
</html>
