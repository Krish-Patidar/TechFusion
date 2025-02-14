<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<title>Tasks & Projects</title>
</head>
<body>


	<%@include file="adminheader.jsp"%>


	<br>
	<br>
	<br>

	<!-- header start -->
	<div class="header">
		Empower Your Team: Manage Tasks & <span> Projects </span>
		Effortlessly!
	</div>
	<br>
	<p class="header_para">In this section, you can manage and track
		all tasks and projects within TechFusion efficiently. Assign tasks to
		employees, set deadlines, and monitor progress to ensure that all
		projects are completed on time. This feature allows for seamless
		collaboration among team members, enabling you to prioritize workloads
		and enhance productivity. Stay organized and keep everyone aligned
		with clear visibility into ongoing tasks and project statuses.</p>
	<br>

	<!-- header end -->

	<br>
	<br>
	<br>
	<br>

	<div class="core-solutions-container">
		<h2 class="header cs">Effortlessly Assign Tasks & Stay Updated on
			Projects</h2>
	</div>
	<p class="header_para cs-para">Easily delegate tasks and monitor
		all your upcoming and ongoing projects in one place. With a
		streamlined task assignment feature, you can ensure each team member
		is aligned with their responsibilities and deadlines. Get a real-time
		overview of project progress, track milestones, and stay on top of
		what’s next. This section empowers you to prioritize effectively and
		keep projects on course for timely completion.</p>

	<br>
	<br>
	<br>


	<div class="table-box">
		<div class="table-row table-head">
			<div class="table-cell first-cell">
				<p>Project Desk</p>
			</div>
			<div class="table-cell">
				<p>Work Summary	</p>
			</div>
			<div class="table-cell last-cell">
				<p>Manage Work</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<p>&nbsp;&nbsp;Task Delegation</p>
			</div>
			<div class="table-cell">
				<p>-</p>
			</div>
			<div class="table-cell last-cell">
				<p>
					<button class="styled-button">
						<a href="taskassign.jsp" class="add">Task Delegation</a>
						<div class="inner-button">
							<svg id="Arrow" viewBox="0 0 32 32"
								xmlns="http://www.w3.org/2000/svg" height="30px" width="30px"
								class="icon">
      <defs>
        <linearGradient y2="100%" x2="100%" y1="0%" x1="0%"
									id="iconGradient">
          <stop style="stop-color:#FFFFFF;stop-opacity:1" offset="0%"></stop>
          <stop style="stop-color:#AAAAAA;stop-opacity:1" offset="100%"></stop>
        </linearGradient>
      </defs>
      <path fill="url(#iconGradient)"
									d="M4 15a1 1 0 0 0 1 1h19.586l-4.292 4.292a1 1 0 0 0 1.414 1.414l6-6a.99.99 0 0 0 .292-.702V15c0-.13-.026-.26-.078-.382a.99.99 0 0 0-.216-.324l-6-6a1 1 0 0 0-1.414 1.414L24.586 14H5a1 1 0 0 0-1 1z"></path>
    </svg>
						</div>
					</button>
				</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<p>&nbsp;&nbsp;Project Overview</p>
			</div>
			<div class="table-cell">
				<p>-</p>
			</div>
			<div class="table-cell last-cell">
				<p>
					<button class="styled-button">
						<a href="project.jsp" class="add">Project Overview</a>
						<div class="inner-button">
							<svg id="Arrow" viewBox="0 0 32 32"
								xmlns="http://www.w3.org/2000/svg" height="30px" width="30px"
								class="icon">
      <defs>
        <linearGradient y2="100%" x2="100%" y1="0%" x1="0%"
									id="iconGradient">
          <stop style="stop-color:#FFFFFF;stop-opacity:1" offset="0%"></stop>
          <stop style="stop-color:#AAAAAA;stop-opacity:1" offset="100%"></stop>
        </linearGradient>
      </defs>
      <path fill="url(#iconGradient)"
									d="M4 15a1 1 0 0 0 1 1h19.586l-4.292 4.292a1 1 0 0 0 1.414 1.414l6-6a.99.99 0 0 0 .292-.702V15c0-.13-.026-.26-.078-.382a.99.99 0 0 0-.216-.324l-6-6a1 1 0 0 0-1.414 1.414L24.586 14H5a1 1 0 0 0-1 1z"></path>
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



	
</body>
</html>