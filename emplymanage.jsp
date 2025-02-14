<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ page import="java.sql.*" %>
<%@ page import="com.controller.EmployeeDAO" %>
<%@ page import="com.controller.TeamDAO" %>
<%
    EmployeeDAO employeeDAO = new EmployeeDAO();
    int employeeCount = 0;
    try {
        employeeCount = employeeDAO.getEmployeeCount();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<%
    TeamDAO teamDAO = new TeamDAO();
    int teamCount = 0;
    try {
        teamCount = teamDAO.getTeamCount();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css"
	rel="stylesheet" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Concert+One&family=Kanit:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Lilita+One&family=Permanent+Marker&family=Radio+Canada+Big:ital,wght@0,400..700;1,400..700&family=Stylish&family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0">
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<link rel="stylesheet" href="manager1.css" />
<link rel="stylesheet" href="card.css" />
<link rel="stylesheet" href="emplymanag.css" />

<script src="https://kit.fontawesome.com.a076d05399.js"></script>
<title>Employee Management</title>
</head>
<body>


	<%@include file="adminheader.jsp"%>


	<br>
	<br>
	<br>

	<!-- header start -->
	<div class="header">
		Employee Management: Streamlining, <br>Workforce Efficiency with <span>TechFusion</span> 
	</div>
	<br>
	<p class="header_para">
		At TechFusion, we believe that effective employee management is the cornerstone of a successful business. Our advanced employee management solutions are designed to help businesses optimize their workforce, foster collaboration, and enhance productivity. With a blend of innovative technology and user-friendly tools, we empower organizations to streamline their HR processes and nurture a thriving work environment.
	</p>
	<br>

	<!-- header end -->

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="core-solutions-container">
		<h2 class="header cs">Effortless Management of Your Workforce Data</h2>
	</div>
	<p class="header_para cs-para">At TechFusion, we understand the importance of having all employee information centralized and easily accessible. Our Comprehensive Employee Database provides a secure, scalable solution for storing and managing critical employee data in one place, giving HR teams and managers the tools they need to effectively oversee their workforce.</p>

	<br>


	
	<br>
	<br>
	<br>

	
	<div class="table-box">
		<div class="table-row table-head">
			<div class="table-cell first-cell">
				<p>Employee Manager</p>
			</div>
			<div class="table-cell">
				<p>Current Workforce</p>
			</div>
			<div class="table-cell last-cell">
				<p>Staff Control</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					&nbsp;&nbsp;Add Employee				</p>
			</div>
			<div class="table-cell">
				<p><%= employeeCount %></p>
			</div>
			<div class="table-cell last-cell">
				<p>
<button class="styled-button">
  <a href="add.jsp" class="add">Add Employee</a>
  <div class="inner-button">
    <svg
      id="Arrow"
      viewBox="0 0 32 32"
      xmlns="http://www.w3.org/2000/svg"
      height="30px"
      width="30px"
      class="icon"
    >
      <defs>
        <linearGradient y2="100%" x2="100%" y1="0%" x1="0%" id="iconGradient">
          <stop style="stop-color:#FFFFFF;stop-opacity:1" offset="0%"></stop>
          <stop style="stop-color:#AAAAAA;stop-opacity:1" offset="100%"></stop>
        </linearGradient>
      </defs>
      <path
        fill="url(#iconGradient)"
        d="M4 15a1 1 0 0 0 1 1h19.586l-4.292 4.292a1 1 0 0 0 1.414 1.414l6-6a.99.99 0 0 0 .292-.702V15c0-.13-.026-.26-.078-.382a.99.99 0 0 0-.216-.324l-6-6a1 1 0 0 0-1.414 1.414L24.586 14H5a1 1 0 0 0-1 1z"
      ></path>
    </svg>
  </div>
</button>
				</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					&nbsp;&nbsp;Update Employee
				</p>
			</div>
			<div class="table-cell">
				<p>-</p>
			</div>
			<div class="table-cell last-cell">
				<p><button class="styled-button">
  <a href="update.jsp" class="add">Update Employee</a>
  <div class="inner-button">
    <svg
      id="Arrow"
      viewBox="0 0 32 32"
      xmlns="http://www.w3.org/2000/svg"
      height="30px"
      width="30px"
      class="icon"
    >
      <defs>
        <linearGradient y2="100%" x2="100%" y1="0%" x1="0%" id="iconGradient">
          <stop style="stop-color:#FFFFFF;stop-opacity:1" offset="0%"></stop>
          <stop style="stop-color:#AAAAAA;stop-opacity:1" offset="100%"></stop>
        </linearGradient>
      </defs>
      <path
        fill="url(#iconGradient)"
        d="M4 15a1 1 0 0 0 1 1h19.586l-4.292 4.292a1 1 0 0 0 1.414 1.414l6-6a.99.99 0 0 0 .292-.702V15c0-.13-.026-.26-.078-.382a.99.99 0 0 0-.216-.324l-6-6a1 1 0 0 0-1.414 1.414L24.586 14H5a1 1 0 0 0-1 1z"
      ></path>
    </svg>
  </div>
</button>
				</p>
			</div>
		</div>
		
		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
				&nbsp;&nbsp;Delete Employee
				</p>
			</div>
			<div class="table-cell">
				<p>-</p>
			</div>
			<div class="table-cell last-cell">
				<p><button class="styled-button">
<a href="showEmployees.jsp" class="add">Delete Employee</a> 
 <div class="inner-button">
    <svg
      id="Arrow"
      viewBox="0 0 32 32"
      xmlns="http://www.w3.org/2000/svg"
      height="30px"
      width="30px"
      class="icon"
    >
      <defs>
        <linearGradient y2="100%" x2="100%" y1="0%" x1="0%" id="iconGradient">
          <stop style="stop-color:#FFFFFF;stop-opacity:1" offset="0%"></stop>
          <stop style="stop-color:#AAAAAA;stop-opacity:1" offset="100%"></stop>
        </linearGradient>
      </defs>
      <path
        fill="url(#iconGradient)"
        d="M4 15a1 1 0 0 0 1 1h19.586l-4.292 4.292a1 1 0 0 0 1.414 1.414l6-6a.99.99 0 0 0 .292-.702V15c0-.13-.026-.26-.078-.382a.99.99 0 0 0-.216-.324l-6-6a1 1 0 0 0-1.414 1.414L24.586 14H5a1 1 0 0 0-1 1z"
      ></path>
    </svg>
  </div>
</button>
				</p>
			</div>
		</div>
		
		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					&nbsp;&nbsp;View Employee
				</p>
			</div>
			<div class="table-cell">
				<p>-</p>
			</div>
			<div class="table-cell last-cell">
				<p><button class="styled-button">
<a href="viewEmployee.jsp" class="add">View Employee</a> 
  <div class="inner-button">
    <svg
      id="Arrow"
      viewBox="0 0 32 32"
      xmlns="http://www.w3.org/2000/svg"
      height="30px"
      width="30px"
      class="icon"
    >
      <defs>
        <linearGradient y2="100%" x2="100%" y1="0%" x1="0%" id="iconGradient">
          <stop style="stop-color:#FFFFFF;stop-opacity:1" offset="0%"></stop>
          <stop style="stop-color:#AAAAAA;stop-opacity:1" offset="100%"></stop>
        </linearGradient>
      </defs>
      <path
        fill="url(#iconGradient)"
        d="M4 15a1 1 0 0 0 1 1h19.586l-4.292 4.292a1 1 0 0 0 1.414 1.414l6-6a.99.99 0 0 0 .292-.702V15c0-.13-.026-.26-.078-.382a.99.99 0 0 0-.216-.324l-6-6a1 1 0 0 0-1.414 1.414L24.586 14H5a1 1 0 0 0-1 1z"
      ></path>
    </svg>
  </div>
</button>
				</p>
			</div>
		</div>
		
			<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					&nbsp;&nbsp;Form a team
				</p>
			</div>
			<div class="table-cell">
				<p><%= teamCount %></p>
			</div>
			<div class="table-cell last-cell">
				<p><button class="styled-button">
<a href="team.jsp" class="add">Form a team</a> 
  <div class="inner-button">
    <svg
      id="Arrow"
      viewBox="0 0 32 32"
      xmlns="http://www.w3.org/2000/svg"
      height="30px"
      width="30px"
      class="icon"
    >
      <defs>
        <linearGradient y2="100%" x2="100%" y1="0%" x1="0%" id="iconGradient">
          <stop style="stop-color:#FFFFFF;stop-opacity:1" offset="0%"></stop>
          <stop style="stop-color:#AAAAAA;stop-opacity:1" offset="100%"></stop>
        </linearGradient>
      </defs>
      <path
        fill="url(#iconGradient)"
        d="M4 15a1 1 0 0 0 1 1h19.586l-4.292 4.292a1 1 0 0 0 1.414 1.414l6-6a.99.99 0 0 0 .292-.702V15c0-.13-.026-.26-.078-.382a.99.99 0 0 0-.216-.324l-6-6a1 1 0 0 0-1.414 1.414L24.586 14H5a1 1 0 0 0-1 1z"
      ></path>
    </svg>
  </div>
</button>
				</p>
			</div>
		</div>
			<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					&nbsp;&nbsp;Delete a Team
				</p>
			</div>
			<div class="table-cell">
				<p>-</p>
			</div>
			<div class="table-cell last-cell">
				<p><button class="styled-button">
<a href="showTeam.jsp" class="add">Delete a Team</a> 
  <div class="inner-button">
    <svg
      id="Arrow"
      viewBox="0 0 32 32"
      xmlns="http://www.w3.org/2000/svg"
      height="30px"
      width="30px"
      class="icon"
    >
      <defs>
        <linearGradient y2="100%" x2="100%" y1="0%" x1="0%" id="iconGradient">
          <stop style="stop-color:#FFFFFF;stop-opacity:1" offset="0%"></stop>
          <stop style="stop-color:#AAAAAA;stop-opacity:1" offset="100%"></stop>
        </linearGradient>
      </defs>
      <path
        fill="url(#iconGradient)"
        d="M4 15a1 1 0 0 0 1 1h19.586l-4.292 4.292a1 1 0 0 0 1.414 1.414l6-6a.99.99 0 0 0 .292-.702V15c0-.13-.026-.26-.078-.382a.99.99 0 0 0-.216-.324l-6-6a1 1 0 0 0-1.414 1.414L24.586 14H5a1 1 0 0 0-1 1z"
      ></path>
    </svg>
  </div>
</button>
				</p>
			</div>
		</div>
		
		
			<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					&nbsp;&nbsp;Manage Leave
				</p>
			</div>
			<div class="table-cell">
				<p>-</p>
			</div>
			<div class="table-cell last-cell">
				<p><button class="styled-button">
<a href="leave.jsp" class="add">Manage Leave</a> 
  <div class="inner-button">
    <svg
      id="Arrow"
      viewBox="0 0 32 32"
      xmlns="http://www.w3.org/2000/svg"
      height="30px"
      width="30px"
      class="icon"
    >
      <defs>
        <linearGradient y2="100%" x2="100%" y1="0%" x1="0%" id="iconGradient">
          <stop style="stop-color:#FFFFFF;stop-opacity:1" offset="0%"></stop>
          <stop style="stop-color:#AAAAAA;stop-opacity:1" offset="100%"></stop>
        </linearGradient>
      </defs>
      <path
        fill="url(#iconGradient)"
        d="M4 15a1 1 0 0 0 1 1h19.586l-4.292 4.292a1 1 0 0 0 1.414 1.414l6-6a.99.99 0 0 0 .292-.702V15c0-.13-.026-.26-.078-.382a.99.99 0 0 0-.216-.324l-6-6a1 1 0 0 0-1.414 1.414L24.586 14H5a1 1 0 0 0-1 1z"
      ></path>
    </svg>
  </div>
</button>
				</p>
			</div>
		</div>
		
		
		
			<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					&nbsp;&nbsp;Generate Reports
				</p>
			</div>
			<div class="table-cell">
				<p>-</p>
			</div>
			<div class="table-cell last-cell">
				<p><button class="styled-button">
<a href="report.jsp" class="add">Generate Report</a> 
  <div class="inner-button">
    <svg
      id="Arrow"
      viewBox="0 0 32 32"
      xmlns="http://www.w3.org/2000/svg"
      height="30px"
      width="30px"
      class="icon"
    >
      <defs>
        <linearGradient y2="100%" x2="100%" y1="0%" x1="0%" id="iconGradient">
          <stop style="stop-color:#FFFFFF;stop-opacity:1" offset="0%"></stop>
          <stop style="stop-color:#AAAAAA;stop-opacity:1" offset="100%"></stop>
        </linearGradient>
      </defs>
      <path
        fill="url(#iconGradient)"
        d="M4 15a1 1 0 0 0 1 1h19.586l-4.292 4.292a1 1 0 0 0 1.414 1.414l6-6a.99.99 0 0 0 .292-.702V15c0-.13-.026-.26-.078-.382a.99.99 0 0 0-.216-.324l-6-6a1 1 0 0 0-1.414 1.414L24.586 14H5a1 1 0 0 0-1 1z"
      ></path>
    </svg>
  </div>
</button>
				</p>
			</div>
		</div>
		
	</div>

	<br>
	<br>
	<br>
	
	<!-- footer start -->


	<footer class="footer">
		<div class="containerr">
			<div class="roww">
				<div class="footer-col">
					<h4>Platform</h4>
					<ul>
						<li><a href="#">Leadership Insights </a></li>
						<li><a href="#">Executive Strategies </a></li>
						<li><a href="#">TechFusion AI Overview </a></li>
						<li><a href="#">Enterprise Solutions </a></li>

					</ul>
				</div>
				<div class="footer-col">
					<h4>Business Management</h4>
					<ul>
						<li><a href="#">Decision-Making Tools </a></li>
						<li><a href="#">Data-Driven Leadership </a></li>
						<li><a href="#">Corporate Governance </a></li>
						<li><a href="#">Growth Strategies </a></li>

					</ul>
				</div>
				<div class="footer-col">
					<h4>Resources</h4>
					<ul>
						<li><a href="#">Industry Reports</a></li>
						<li><a href="#">White Papers </a></li>
						<li><a href="#">Executive Training Programs </a></li>
						<li><a href="#">Upcoming Conferences</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>follow us</h4>
					<div class="social-links">
						<a href="https://www.instagram.com/accounts/login/"
							target="_blank"><i class="fab fa-instagram"></i></a> <a
							href="https://x.com/i/flow/login" target="_blank"><i
							class="fa-brands fa-x-twitter"></i></a> <a
							href="https://api.linkedin.com/login" target="_blank"><i
							class="fab fa-linkedin-in"></i></a> <a
							href="https://github.com/login" target="_blank"><i
							class="fa-brands fa-github"></i></a>
					</div>
				</div>
			</div>
			<center>
				<h3 class="copyright">© 2024 TechFusion. All Rights Reserved.
					Created by Krish Patidar.</h3>
			</center>
		</div>
	</footer>

	<!-- footer end -->












	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>

	<script src="https://kit.fontawesome.com/a81368914c.js"></script>

	<script src="https://unpkg.com/scrollreveal"></script>
	<script src="main.js"></script>
	

</body>
</html>