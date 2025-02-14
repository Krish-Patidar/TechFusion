<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Project Overview</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="manager1.css" />
<link rel="stylesheet" href="card.css" />
    
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

        .leave-logo {
            display: none;
            font-weight: bold;
            font-size: 24px;
            color: #D0550B;
            position: absolute;
            top: 10px;
            right: 10px;
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
        .btn-danger{
        	    background-color: #EC273C; 
            color: white;
        }
            .btn-danger:hover{
        	 	background-color: #C9081D;
        	 color: white;
        }
			.btn-success{
				background-color: #06A246;
        	color: white;
			}
			.btn-success:hover{
				 background-color: ##07883C;
        	color: white;

			}
			
    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
        function toggleLeaveLogo(cardId) {
            var logo = document.getElementById("leave-logo-" + cardId);
            if (logo.style.display === "none" || logo.style.display === "") {
                logo.style.display = "block"; 
            } else {
                logo.style.display = "none"; 
            }
        }
    </script>
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
        <a class="nav-link link_item" href="tasks.jsp">Tasks & Projects</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link link_item" href="ai.jsp">AI Insights</a>
      </li>
    </ul>
     <form class="form-inline my-2 my-lg-0">
  <button class="btnn btn" type="button" data-toggle="tooltip" data-placement="bottom" title="Profile" onclick="window.location.href='managerprofile.jsp'">
    <i class="fa-solid fa-user" style="color: #000000;"></i>
  </button>
</form>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<form class="form-inline my-2 my-lg-0">
  <button class="btnnn btn" type="button" onmouseover="showNotifications()" onmouseout="hideNotifications()">
    <i class="fa-solid fa-bell" style="color: #000000;"></i>
  </button>
</form>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <form class="form-inline my-2 my-lg-0">
      <button class="btn signup" type="submit"><a href="Logout" class="signup-btn">Log Out</a></button>
    </form>
  </div>
</nav>



	<br>
	<br>
	
	<div class="core-solutions-container">
		<h2 class="header cs">Comprehensive Project Overview</h2>
	</div>
	<p class="header_para cs-para">Get a clear and organized view of all ongoing and upcoming projects in one place. The Project Overview section offers insights into each project’s status, key milestones, deadlines, and assigned team members. Stay updated on progress, identify any potential roadblocks, and ensure every project is on track to meet its goals. This centralized view helps streamline collaboration, enhances transparency, and enables proactive project management for successful outcomes.
</p>

	<br>

	<div class="table-box">
		<div class="table-row table-head">
			<div class="table-cell first-cell">
				<p>Projects</p>
			</div>
			<div class="table-cell">
				<p>Projects</p>
			</div>
			<div class="table-cell last-cell">
				<p>Projects</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<p>AI-Driven Analytics Platform</p>
			</div>
			<div class="table-cell">
				<p>Next-Generation Cybersecurity Solution</p>
			</div>
			<div class="table-cell last-cell">
				<p>Sustainable Tech Initiative</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<p>Smart City IoT Integration</p>
			</div>
			<div class="table-cell">
				<p>Advanced Data Visualization Tools</p>
			</div>
			<div class="table-cell last-cell">
				<p>Cloud-Based Collaboration Suite</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>Augmented Reality for Education</p>
			</div>
			<div class="table-cell">
				<p>Blockchain-Based Supply Chain Management</p>
			</div>
			<div class="table-cell last-cell">
				<p>High-Performance Computing Solutions</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>Autonomous Vehicle Technology</p>
			</div>
			<div class="table-cell">
				<p>Personalized Healthcare Solutions</p>
			</div>
			<div class="table-cell last-cell">
				<p>Advanced Robotics for Manufacturing</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>Next-Gen Digital Payment Systems</p>
			</div>
			<div class="table-cell">
				<p>Green Energy Management System</p>
			</div>
			<div class="table-cell last-cell">
				<p>Smart Home Automation</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>Precision Agriculture Technologies</p>
			</div>
			<div class="table-cell">
				<p>Real-Time Language Translation Software</p>
			</div>
			<div class="table-cell last-cell">
				<p>Predictive Maintenance for Industrial Equipment</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>Virtual Reality for Remote Work</p>
			</div>
			<div class="table-cell">
				<p>Machine Learning Optimization Algorithms</p>
			</div>
			<div class="table-cell last-cell">
				<p>Digital Twin Technology for Urban Planning</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>Intelligent Traffic Management Systems</p>
			</div>
			<div class="table-cell">
				<p>Automated Customer Support Systems</p>
			</div>
			<div class="table-cell last-cell">
				<p>High-Speed Data Transfer Solutions</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>Energy-Efficient Data Centers</p>
			</div>
			<div class="table-cell">
				<p>5G Network Deployment Strategies</p>
			</div>
			<div class="table-cell last-cell">
				<p>Advanced Fraud Detection Systems</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>Interactive 3D Modeling Tools</p>
			</div>
			<div class="table-cell">
				<p>Smart Wearable Technology</p>
			</div>
			<div class="table-cell last-cell">
				<p>Customizable Enterprise Resource Planning (ERP) Systems</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>Innovative Payment Gateway Solutions</p>
			</div>
			<div class="table-cell">
				<p>Advanced Biometric Authentication Systems</p>
			</div>
			<div class="table-cell last-cell">
				<p>Remote Health Monitoring Solutions</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>Smart Grid Technology</p>
			</div>
			<div class="table-cell">
				<p>Cloud-Native Application Development</p>
			</div>
			<div class="table-cell last-cell">
				<p>Immersive Gamification Platforms</p>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
