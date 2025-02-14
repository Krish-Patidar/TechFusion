<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>


<%!
    	public String getDaySuffix(int day){
    	if(day >= 11 && day <=13){
    		return "th";
    	}
    	switch (day % 10){
    	case 1: return "st";
    	case 2: return "nd";
    	case 3: return "rd";
    	default: return "th";
    	}
    }
    %>

<%
    	String loginTime = (String) session.getAttribute("loginTime");
    
    if(loginTime == null){
    	Date date = new Date();
    	Calendar cal = Calendar.getInstance();
    	cal.setTime(date);
    	int day = cal.get(Calendar.DAY_OF_MONTH);
    	
    	SimpleDateFormat formatter = new SimpleDateFormat("EEEE, MMMM d'" + getDaySuffix(day) + "', yyyy | hh:mm a");
    	
    	loginTime = formatter.format(date);
    	session.setAttribute("loginTime", loginTime);
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
<script src="https://kit.fontawesome.com.a076d05399.js"></script>
<title>Dashboard Overview</title>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Revenue (in million $)', 'Expenses (in million $)'],
          ['Jan 2019',  21.8,      20.5],
          ['Dec 2019',  23.3,      31.2],
          ['2020',  25.7,      45.3],
          ['2021',  37.8,      34.5],
          ['2022',  58.4,      51.2],
          ['2023',  84.5,       78.9],
          ['2024',  127.8,      109.3]
        ]);

        var options = {
          title: 'Company Performance',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>

<script>
    google.charts.load('current', {packages: ['corechart', 'line']});
    google.charts.setOnLoadCallback(drawCrosshairs);
    
    function drawCrosshairs() {
          var data = new google.visualization.DataTable();
          data.addColumn('number', 'X');
          data.addColumn('number', 'Growth');
          data.addColumn('number', 'Revenue');

        

          data.addRows([
            [0, 0, 0],    [1, 10, 5],   [2, 23, 15],  [3, 17, 9],   [4, 18, 10],  [5, 9, 5],
            [6, 11, 3],   [7, 27, 19],  [8, 33, 25],  [9, 40, 32],  [10, 32, 24], [11, 35, 27],
            [12, 30, 22], [13, 40, 32], [14, 42, 34], [15, 47, 39], [16, 44, 36], [17, 48, 40],
            [18, 52, 44], [19, 54, 46], [20, 42, 34], [21, 55, 47], [22, 56, 48], [23, 57, 49],
            [24, 60, 52], [25, 50, 42], [26, 52, 44], [27, 51, 43], [28, 49, 41], [29, 53, 45],
            [30, 55, 47], [31, 60, 52], [32, 61, 53], [33, 59, 51], [34, 62, 54], [35, 65, 57],
            [36, 62, 54], [37, 58, 50], [38, 55, 47], [39, 61, 53], [40, 64, 56], [41, 65, 57],
            [42, 63, 55], [43, 66, 58], [44, 67, 59], [45, 69, 61], [46, 69, 61], [47, 70, 62],
            [48, 72, 64], [49, 68, 60], [50, 66, 58], [51, 65, 57], [52, 67, 59], [53, 70, 62],
            [54, 71, 63], [55, 72, 64], [56, 73, 65], [57, 75, 67], [58, 70, 62], [59, 68, 60],
            [60, 64, 56], [61, 60, 52], [62, 65, 57], [63, 67, 59], [64, 68, 60], [65, 69, 61],
            [66, 70, 62], [67, 72, 64], [68, 75, 67], [69, 80, 72]
          ]);

          var options = {
            hAxis: {
              title: 'Time (in years)'
            },
            vAxis: {
              title: 'Company Overall Growth'
            },
            colors: ['#a52714', '#097138'],
            crosshair: {
              color: '#000',
              trigger: 'selection'
            }
          };

          var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

          chart.draw(data, options);
          chart.setSelection([{row: 38, column: 1}]);
    }
    </script>
<script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Active Projects',     280],
          ['Completed Projects',      670]
          ]);

        var options = {
          title: 'Project Success Rate'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>

<script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Counrty', 'No. of PPO'],
          ['India',     180],
          ['USA',      105],
          ['Australia',  60],
          ['Japan', 40],
          ['Others', 19]
          ]);

        var options = {
          title: 'PPO Statistics by Country',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
</head>
<body>


	<%@include file="adminheader.jsp"%>


	<br>
	<br>
	<br>

	<!-- header start -->
	<div class="header">
		Welcome, Managing Director <br> <span>Vaishnavi Patidar</span>
	</div>
	<br>
	<p class="header_para">
		Your dashboard is ready with today's updates and tasks. Stay on top of
		your responsibilities <br> and manage your team efficiently with
		all the tools you need at your fingertips.
	</p>
	<br>
	<center>
		<p>
			<i class="fa-solid fa-clock"></i> Accessed on:
			<%= loginTime %></p>
	</center>
	<!-- header end -->

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="core-solutions-container">
		<h2 class="header cs">Dashboard Overview</h2>
	</div>
	<p class="header_para cs-para">Get a quick snapshot of the
		company's vital statistics. Monitor total employees, active projects,
		total experts, and pending leave requests to stay informed and ready
		to act.</p>

	<br>


	<div class="table-box">
		<div class="table-row table-head">
			<div class="table-cell first-cell">
				<p>Departments</p>
			</div>
			<div class="table-cell">
				<p>Full Time Employees</p>
			</div>
			<div class="table-cell last-cell">
				<p>Interns</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					<i class="fa-solid fa-user" style="color: #000000;"></i>&nbsp;&nbsp;Human
					Resources (HR)
				</p>
			</div>
			<div class="table-cell">
				<p>732</p>
			</div>
			<div class="table-cell last-cell">
				<p>123</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					<i class="fa-solid fa-server" style="color: #000000;"></i>&nbsp;&nbsp;Information
					Technology (IT)
				</p>
			</div>
			<div class="table-cell">
				<p>3569</p>
			</div>
			<div class="table-cell last-cell">
				<p>521</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					<i class="fa-solid fa-users"></i>&nbsp;&nbsp;Experts Department
				</p>
			</div>
			<div class="table-cell">
				<p>2862</p>
			</div>
			<div class="table-cell last-cell">
				<p>00</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					<i class="fa-solid fa-chart-line" style="color: #000000;"></i>&nbsp;&nbsp;Sales
				</p>
			</div>
			<div class="table-cell">
				<p>1283</p>
			</div>
			<div class="table-cell last-cell">
				<p>152</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					<i class="fa-solid fa-phone" style="color: #000000;"></i>&nbsp;&nbsp;Marketing
				</p>
			</div>
			<div class="table-cell">
				<p>1092</p>
			</div>
			<div class="table-cell last-cell">
				<p>158</p>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					<i class="fa-solid fa-suitcase" style="color: #000000;"></i>&nbsp;&nbsp;Finance
				</p>
			</div>
			<div class="table-cell">
				<p>662</p>
			</div>
			<div class="table-cell last-cell">
				<p>104</p>
			</div>
		</div>
	</div>


	<br>
	<br>
	<br>

	<div class="core-solutions-container">
		<h2 class="header cs">Total Workforce Overview</h2>
	</div>
	<p class="header_para cs-para">
		TechFusion proudly employs a total of <span class="employee">10200
			full-time employees</span> and <span class="employee">1058 interns</span> in
		80+ countries. This comprehensive count reflects our dynamic team,
		combining experienced professionals and talented interns who
		contribute to our ongoing success and innovation.
	</p>
	<br>
	<br>
	<br>


	<div class="core-solutions-container">
		<h2 class="header cs">Company Growth Statistics</h2>
	</div>
	<p class="header_para cs-para">TechFusion has experienced
		significant growth, reflected in our expanding workforce and project
		portfolio. This section showcases key statistics and trends that
		highlight our company's rapid development and market impact.
		Visualized through dynamic charts, you can explore our year-over-year
		overall business performance.</p>

	<br>

	<center>
		<div id="curve_chart" style="width: 900px; height: 500px"></div>
	</center>
	<br>
	<br>
	<center>
		<div id="chart_div" style="width: 900px; height: 500px"></div>
	</center>
	<br>
	<br>
	<br>


	<div class="core-solutions-container">
		<h2 class="header cs">TechFusion's Project Milestones</h2>
	</div>
	<p class="header_para cs-para">
		At TechFusion, our journey is defined by the<span class="employee">
			670 projects</span> we've successfully completed and the<span
			class="employee"> 280 projects</span> that are currently underway.
		Each completed project is a testament to our unwavering commitment to
		innovation, excellence, and client satisfaction. From transformative
		AI solutions to cutting-edge software systems, our extensive portfolio
		showcases the breadth and depth of our expertise. Meanwhile, our
		ongoing projects reflect our relentless pursuit of technological
		advancement, as we continue to develop and deliver solutions that meet
		the evolving needs of a global market. Whether national or
		international, our projects represent the heartbeat of TechFusion’s
		mission to shape the future of technology.
	</p>
	<br>
	<div class="table-box">
		<div class="table-row table-head">
			<div class="table-cell first-cell">
				<p>Our Endeavors</p>
			</div>
			<div class="table-cell">
				<p>Active Projects</p>
			</div>
			<div class="table-cell last-cell">
				<p>Completed Projects</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					<i class="fa-solid fa-map-pin" style="color: #000000;"></i>&nbsp;&nbsp;National
					Projects
				</p>
			</div>
			<div class="table-cell">
				<p>106</p>
			</div>
			<div class="table-cell last-cell">
				<p>272</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<p>
					<i class="fa-solid fa-earth-asia" style="color: #000000;"></i>&nbsp;&nbsp;Global
					Projects
				</p>
			</div>
			<div class="table-cell">
				<p>174</p>
			</div>
			<div class="table-cell last-cell">
				<p>398</p>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>

	<div class="core-solutions-container">
		<h2 class="header cs">Project Progress Overview</h2>
	</div>
	<p class="header_para cs-para">At TechFusion, we pride ourselves on
		delivering cutting-edge solutions across the globe. Currently, we have
		completed 670 projects, showcasing our expertise and commitment to
		excellence. Our ongoing projects, totaling 280, are a testament to our
		continuous innovation and dedication to achieving the best outcomes
		for our clients. The pie chart below illustrates the distribution
		between our completed and ongoing projects, providing a clear snapshot
		of our project management efficiency.</p>

	<br>
	<center>
		<div id="piechart" style="width: 900px; height: 500px;"></div>
	</center>
	<br>
	<br>
	<br>

	<div class="core-solutions-container">
		<h2 class="header cs">Recognizing Our Top Talent</h2>
	</div>
	<p class="header_para cs-para">At TechFusion, our success is driven
		by the dedication and expertise of our exceptional employees. We are
		proud to highlight our top performers who consistently go above and
		beyond to deliver outstanding results. Their innovative thinking,
		leadership, and commitment to excellence have not only propelled their
		careers but also contributed significantly to the growth and success
		of our company. These individuals embody the values and spirit of
		TechFusion, setting a high standard for the entire team.</p>

	<br>
	<br>


	<div class="container">
		<div class="box">
			<div class="image">
				<img alt="" src="image/indian1.jpg">
			</div>
			<div class="name">Arjun Kapoor</div>
			<div class="rating">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i>

			</div>
			<p>A top IT professional from India’s IT department, Arjun Kapoor
				drives innovation and tech excellence at TechFusion growth in IT
				industry.</p>
			<div class="btns">
				<button>Learn More</button>
				<button>Contact</button>
			</div>
		</div>
		<div class="box">
			<div class="image">
				<img alt="" src="image/indianfe2.png">
			</div>
			<div class="name">Aarohi Patidar</div>
			<div class="rating">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i>

			</div>
			<p>A key HR professional from India, Aarohi Patidar excels in
				fostering a positive workplace culture and talent management at
				TechFusion.</p>
			<div class="btns">
				<button>Learn More</button>
				<button>Contact</button>
			</div>
		</div>
		<div class="box">
			<div class="image">
				<img alt="" src="image/usa1.png">
			</div>
			<div class="name">Jacob Turner</div>
			<div class="rating">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="far fa-star"></i>

			</div>
			<p>A highly skilled IT expert from the USA, Jacob Turner plays a
				crucial role in advancing innovative technological initiatives at
				TechFusion.</p>
			<div class="btns">
				<button>Learn More</button>
				<button>Contact</button>
			</div>
		</div>
	</div>

	<br>
	<div class="container">
		<div class="box">
			<div class="image">
				<img alt="" src="image/australian1.png">
			</div>
			<div class="name">Isla Wilson</div>
			<div class="rating">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i>

			</div>
			<p>A dedicated HR professional from Australia, Isla Wilson excels
				in talent management and enhancing workplace culture at TechFusion.</p>
			<div class="btns">
				<button>Learn More</button>
				<button>Contact</button>
			</div>
		</div>
		<div class="box">
			<div class="image">
				<img alt="" src="image/indian2.png">
			</div>
			<div class="name">Ravi Sharma</div>
			<div class="rating">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="far fa-star"></i>

			</div>
			<p>A dynamic and strategic marketing expert from India, Ravi
				Sharma drives impactful campaigns and innovative brand strategy at
				TechFusion.</p>
			<div class="btns">
				<button>Learn More</button>
				<button>Contact</button>
			</div>
		</div>
		<div class="box">
			<div class="image">
				<img alt="" src="image/indianfe1.png">
			</div>
			<div class="name">Kavita Mehra</div>
			<div class="rating">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="far fa-star"></i>

			</div>
			<p>A talented IT professional from India, Kavita Mehra excels in
				developing cutting-edge solutions and advancing TechFusion’s
				technology.</p>
			<div class="btns">
				<button>Learn More</button>
				<button>Contact</button>
			</div>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="box">
			<div class="image">
				<img alt="" src="image/indian3.jpg">
			</div>
			<div class="name">Aditya Joshi</div>
			<div class="rating">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="far fa-star"></i>

			</div>
			<p>A skilled finance expert from India, Aditya Joshi excels in
				financial planning and analysis, driving fiscal strategy at
				TechFusion.</p>
			<div class="btns">
				<button>Learn More</button>
				<button>Contact</button>
			</div>
		</div>
		<div class="box">
			<div class="image">
				<img alt="" src="image/japanese1.png">
			</div>
			<div class="name">Sakura Tanaka</div>
			<div class="rating">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i>

			</div>
			<p>A proficient IT professional from Japan, Sakura Tanaka
				contributes to innovative technology solutions and advancements at
				TechFusion.</p>
			<div class="btns">
				<button>Learn More</button>
				<button>Contact</button>
			</div>
		</div>
		<div class="box">
			<div class="image">
				<img alt="" src="image/canadian1.png">
			</div>
			<div class="name">Ethan Thompson</div>
			<div class="rating">
				<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="fas fa-star"></i> <i class="fas fa-star"></i> <i
					class="far fa-star"></i>

			</div>
			<p>A skilled sales expert from Canada, Ethan Thompson drives
				successful sales strategies and client relationships at TechFusion.</p>
			<div class="btns">
				<button>Learn More</button>
				<button>Contact</button>
			</div>
		</div>
	</div>


	<br>
	<br>
	<br>

	<div class="core-solutions-container">
		<h2 class="header cs">PPO Statistics by Country After Internship
		</h2>
	</div>
	<p class="header_para cs-para">
		At TechFusion, our internship program has proven to be a valuable
		stepping stone for future employment. The number of candidates
		receiving <span class="employee">Pre-Placement Offers (PPOs)</span>
		varies by country, reflecting the global reach of our talent pool. For
		instance, in India, we have extended PPOs to over 180 candidates,
		highlighting the country's strong performance. In the USA, 105
		candidates received PPOs, showcasing our commitment to nurturing
		talent across North America. From Australia, 60 candidates were
		offered PPOs, while Japan saw 40 candidates securing offers. In total,
		TechFusion has extended PPOs to <span class="employee">385
			outstanding interns</span>, underscoring our dedication to recognizing and
		rewarding exceptional talent worldwide.
	</p>

	<br>
	<br>
	<center>
		<div id="donutchart" style="width: 900px; height: 500px;"></div>
	</center>

	<br>
	<br>
	<br>

	<div class="core-solutions-container">
		<h2 class="header cs">Upcoming Major Projects</h2>
	</div>
	<p class="header_para cs-para">TechFusion is poised to launch
		several exciting new projects, each designed to leverage local
		expertise and address specific needs. Apart from these major
		initiatives, there are several ongoing projects that are equally
		important to our operations. Here’s a glimpse into what’s coming:</p>

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

	<div class="core-solutions-container">
		<h2 class="header cs">Announcements</h2>
	</div>
	<p class="header_para cs-para">Keep up with the latest updates,
		policy changes, and important news at TechFusion. From new initiatives
		and upcoming meetings to team changes and company-wide achievements,
		this section ensures you’re always in the loop and informed about what
		matters most.</p>

	<br>


	<div class="table-box">
		<div class="table-row table-head">
			<div class="table-cell first-cell">
				<p>Announcements</p>
			</div>
			<div class="table-cell">
				<p>Announcements</p>
			</div>
			<div class="table-cell">
				<p>Announcements</p>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<a href="#" class="announcement">
					<p>
						<i class="fa-solid fa-book" style="color: #000000;"></i>&nbsp;&nbsp;New
						Policies and Procedures at TechFusion
					</p>
				</a>
			</div>
			<div class="table-cell">
				<a href="#" class="announcement">
					<p>Remote Work Policy</p>
				</a>
			</div>
			<div class="table-cell last-cell">
				<a href="#" class="announcement">
					<p>Leave Policy Update</p>
				</a>
			</div>
		</div>


		<div class="table-row">
			<div class="table-cell first-cell">
				<a href="#" class="announcement">
					<p>
						<i class="fa-solid fa-users" style="color: #000000;"></i>&nbsp;&nbsp;Upcoming
						Meetings and Events
					</p>
				</a>
			</div>
			<div class="table-cell">
				<a href="#" class="announcement">
					<p>All-Hands Meeting & Team-Building Workshop</p>
				</a>
			</div>
			<div class="table-cell last-cell">
				<a href="#" class="announcement">
					<p>Quarterly Product Launch & Annual Holiday Party</p>
				</a>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<a href="#" class="announcement">
					<p>
						<i class="fa-solid fa-user-tie" style="color: #000000;"></i>&nbsp;&nbsp;New
						Hires and Team Changes
					</p>
				</a>
			</div>
			<div class="table-cell">
				<a href="#" class="announcement">
					<p>New Hires</p>
				</a>
			</div>
			<div class="table-cell last-cell">
				<a href="#" class="announcement">
					<p>Promotions and Role Changes</p>
				</a>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<a href="#" class="announcement">
					<p>
						<i class="fa-solid fa-star" style="color: #000000;"></i>&nbsp;&nbsp;Company
						Achievements and Milestones
					</p>
				</a>
			</div>
			<div class="table-cell">
				<a href="#" class="announcement">
					<p>Industry Awards and Recognitions</p>
				</a>
			</div>
			<div class="table-cell last-cell">
				<a href="#" class="announcement">
					<p>Company Milestones</p>
				</a>
			</div>
		</div>

		<div class="table-row">
			<div class="table-cell first-cell">
				<a href="#" class="announcement">
					<p>
						<i class="fa-solid fa-pen-to-square" style="color: #000000;"></i>&nbsp;&nbsp;General
						Updates and Miscellaneous News

					</p>
				</a>
			</div>
			<div class="table-cell">
				<a href="#" class="announcement">
					<p>System Upgrades and Maintenance</p>
				</a>
			</div>
			<div class="table-cell last-cell">
				<a href="#" class="announcement">
					<p>Health and Wellness Tips</p>
				</a>
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