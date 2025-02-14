<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Employee</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <style>
.form {
  display: flex;
  flex-direction: column;
  gap: 10px;
  max-width: 350px;
  background-color: #fff;
  padding: 20px;
  border-radius: 20px;
  position: relative;
}

.title {
  font-size: 28px;
  color: #0D0693;
  font-weight: 600;
  letter-spacing: -1px;
  position: relative;
  display: flex;
  align-items: center;
  padding-left: 30px;
}

.title::before,.title::after {
  position: absolute;
  content: "";
  height: 16px;
  width: 16px;
  border-radius: 50%;
  left: 0px;
  background-color: #0D0693;
}

.title::before {
  width: 18px;
  height: 18px;
  background-color: #0D0693;
}

.title::after {
  width: 18px;
  height: 18px;
  animation: pulse 1s linear infinite;
}

.message, .signin {
  color: rgba(88, 87, 87, 0.822);
  font-size: 14px;
}

.signin {
  text-align: center;
}

.signin a {
  color: #0D0693;
}

.signin a:hover {
  text-decoration: underline #0D0693;
}

.flex {
  display: flex;
  width: 100%;
  gap: 6px;
}

.form label {
  position: relative;
}

.form label .input {
  width: 1100px;
  padding: 20px 20px 30px 10px;
  outline: 0;
  border: 1px solid rgba(105, 105, 105, 0.397);
  border-radius: 10px;
}

.form label .input + span {
  position: absolute;
  left: 10px;
  top: 15px;
  color: grey;
  font-size: 0.9em;
  cursor: text;
  transition: 0.3s ease;
}

.form label .input:placeholder-shown + span {
  top: 15px;
  font-size: 0.9em;
}

.form label .input:focus + span,.form label .input:valid + span {
  top: 30px;
  font-size: 0.7em;
  font-weight: 600;
}

.form label .input:valid + span {
  color: green;
}

.submit {
  border: none;
  outline: none;
    width: 1100px;
  
  background-color: #0D0693;
  padding: 10px;
  border-radius: 10px;
  color: #fff;
  font-size: 16px;
  transform: .3s ease;
}


.submit:hover {
  background-color: #0E087D;
}

@keyframes pulse {
  from {
    transform: scale(0.9);
    opacity: 1;
  }

  to {
    transform: scale(1.8);
    opacity: 0;
  }
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

    .color{
    	color: black;
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
	
	

    <div class="container">
        <form id="addEmployeeForm" class="form" method="post" enctype="multipart/form-data">
            <p class="title">Add Employees </p>
            <div class="form-group">
                <label for="name">
                                            <span class="color">Full Name</span>
                                            
                
                <input type="text" class="form-control input" id="name" name="name" required>
                </label>
            </div>
            <div class="form-group">
                <label for="email">
                                        <span class="color">Email</span>
                
                <input type="email" class="form-control input" id="email" name="email" required>
              
                </label>
            </div>
            <div class="form-group">
                <label for="phone">
                                      <span class="color">Phone Number</span>
              
                <input type="text" class="form-control input" id="phone" name="phone" required>
                
                </label>
            </div>
            <div class="form-group">
                <label for="ctc">
                                        <span class="color">Salary (CTC)</span>
                
                <input type="number" class="form-control input" id="ctc" name="ctc" required>
                
                </label>
            </div>
            <div class="form-group">
                <label for="position">
                                        <span class="color">Position</span>
                
                <input type="text" class="form-control input" id="position" name="position" required>
                
                </label>
            </div>
            <div class="form-group">
                <label for="department">
                                        <span class="color">Department</span>
                
                <input type="text" class="form-control input" id="department" name="department" required>
                
                </label>
            </div>
            <div class="form-group">
                <label for="doj">
                                        <span class="color">Date of Joining (DOJ)</span>
                
                <input type="date" class="form-control input" id="doj" name="doj" required>
                
                </label>
            </div>
            <div class="form-group">
                <label for="dob">
                                        <span class="color">Date of Birth (DOB)</span>
                
                <input type="date" class="form-control input" id="dob" name="dob" required>
                
                </label>
            </div>
             <div class="form-group">
                <label for="dob">
                                        <span class="color">Age</span>
                
                <input type="text" class="form-control input" id="age" name="age" required>
                
                </label>
            </div>
             <div class="form-group">
                <label for="dob">
                                        <span class="color">Experience (in years)</span>
                
                <input type="number" class="form-control input" id="experience" name="experience" required>
                
                </label>
            </div>
             <div class="form-group">
                <label for="dob">
                                        <span class="color">Job Satisfaction (1-5, take a feedback from employee)</span>
                
                <input type="text" class="form-control input" id="job_satisfaction" name="job_satisfaction" required>
                
                </label>
            </div>
             <div class="form-group">
                <label for="dob">
                                        <span class="color">Years at TechFusion</span>
                
                <input type="number" class="form-control input" id="years_at_company" name="years_at_company" required>
                
                </label>
            </div>
             <div class="form-group">
                <label for="dob">
                                        <span class="color">Marital Status</span>
                
                <input type="text" class="form-control input" id="marital_status" name="marital_status" required>
                
                </label>
            </div>
            
            <div class="form-group">
                <label for="image">
                                        <span class="color">Upload Image</span>
                
                <input type="file" class="form-control input" id="image" name="image" required>
                
                </label>
            </div>
            <button type="submit" class="btn btn-primary submit">Add Employee</button>
        </form>

        <div id="customAlert" style="display:none; position:fixed; top:10px; left:50%; transform:translateX(-50%); background-color: #4CAF50; color: white; padding: 15px; z-index: 1000; border-radius: 5px;">
            Employee added successfully!
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $("#addEmployeeForm").on("submit", function(event) {
                event.preventDefault();
                $.ajax({
                    type: "POST",
                    url: "EmployeeServlet",
                    data: new FormData(this),
                    processData: false, 
                    contentType: false, 
                    success: function(response) {

                    	$("#customAlert").text(response).fadeIn().delay(2000).fadeOut(function() {
								window.location.href = "emplymanage.jsp";
                        });
                    },
                    error: function() {
                        alert("Error adding employee");
                    }
                });
            });
        });
    </script>
</body>
</html>
