<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Concert+One&family=Kanit:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Lilita+One&family=Permanent+Marker&family=Radio+Canada+Big:ital,wght@0,400..700;1,400..700&family=Stylish&family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
    integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0">
  <link rel="stylesheet" href="platform.css" />
  <title>Platform</title>
</head>

<body>

  <!-- navbar start -->

  <nav class="navbar navbar-expand-lg navbar-light">
    <a class="navbar-brand" href="index.jsp"><span class="logo_color">Tech</span><span>Fusion</span></a>
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
          <a class="nav-link link_item" href="solutions.jsp">Solutions</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link link_item" href="#">Platform</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link link_item" href="resources.jsp">Resources</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link link_item" href="pricing.jsp">Pricing</a>
        </li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <button class="btn login" type="submit"><a href="login.jsp" class="login-btn">Log In</a></button>
        <button class="btn signup" type="submit"><a href="signup.jsp" class="signup-btn">Sign Up</a></button>
      </form>
    </div>
  </nav>


  <!-- navbar end -->

  <br><br><br>

  <!-- header start -->

  <div class="header">
    The Ultimate Platform for Modern <br> Work Software
  </div>
  <p class="header_para">TechFusion empowers businesses to create professional, custom <br> apps that boost efficiency
    and innovation—tailored by experts, built with code.

  </p>

  <center><button class="btn getstarted" type="submit">Start Building</button></center>

  <!-- header end -->

  <br><br><br>
  <br><br>

  <!-- video start -->

  <center>
    <div class="vid-box">
      <section class="vid-par">
        <video id="my-vid" autoplay loop muted>
          <source type="video/mp4" src="image/video2.mp4">
        </video>
      </section>
    </div>
  </center>

  <!-- video end -->

  <br><br><br>
  <br><br><br><br>

  <!-- below video start -->


  <div class="below-video">
    Develop the Solutions You Need in Days—Not Months. <br>
    <span class="below-video-2">
      Rapidly build custom apps that optimize your business, <br> from customer management and inventory tracking to
      <br> real-time KPI visualization.
    </span>
  </div>
  <br>
  <button class="btn getstartedd" type="submit">Discover More</button>

  <!-- below video end -->

  <br><br><br>
  <br><br><br><br>

  <!-- center heading start -->

  <div class="below_sliderone">Harness the Expertise of a Developer <br> and Designer

  </div>
  <p class="below_sliderone_para">Effortlessly create tailor-made apps for your business with professional-grade
    features. <br> Bring your vision to life with coding expertise and design precision, no prior skills necessary.
  </p>
  <center><button class="btn getstarted" type="submit">Start Building</button></center>

  <!-- center heading end -->

  <br><br><br>
  <hr width="100%" size="2" color="#555255" class="hrline">

  <br><br>

  <!-- box-1 start -->


  <div class="row">
    <div class="img-wrapper">
      <img src="./image/appdevelopment.jpg" alt="">
    </div>
    <div class="content-wrapper">
      <div class="content">
        <span class="text-wrapper">
          <span></span>
        </span>
        <h2>Data-Centric App Development</h2>
        <p>Create robust applications using an intuitive, spreadsheet-style interface. Seamlessly integrate data from
          various sources—whether spreadsheets, databases, or starting anew.
        </p>
        <button class="btn getstarted" type="submit">Data

          <svg xmlns="http://www.w3.org/2000/svg" width="1.2rem" height="1.2rem" viewBox="0 0 16 16" class="icon">
            <path fill="white" fill-rule="evenodd"
              d="M10.159 10.72a.75.75 0 1 0 1.06 1.06l3.25-3.25L15 8l-.53-.53l-3.25-3.25a.75.75 0 0 0-1.061 1.06l1.97 1.97H1.75a.75.75 0 1 0 0 1.5h10.379z"
              clip-rule="evenodd" />
          </svg>

        </button>
      </div>
    </div>
  </div>

  <!-- box-1 end -->


  <br><br>
  <hr width="100%" size="2" color="#555255" class="hrline">

  <br>

  <!-- box-2 start -->

  <div class="row">
    <div class="img-wrapper">
      <img src="./image/designintegration.jpg" alt="">
    </div>
    <div class="content-wrapper">
      <div class="content">
        <span class="text-wrapper">
          <span></span>
        </span>
        <h2>Seamless Design Integration
        </h2>
        <p>Ensure your apps boast a sleek and professional appearance across mobile and desktop. Benefit from expertly
          crafted themes, layouts, and components that deliver a polished user experience automatically.
        </p>
        <button class="btn getstarted" type="submit">Design

          <svg xmlns="http://www.w3.org/2000/svg" width="1.2rem" height="1.2rem" viewBox="0 0 16 16" class="icon">
            <path fill="white" fill-rule="evenodd"
              d="M10.159 10.72a.75.75 0 1 0 1.06 1.06l3.25-3.25L15 8l-.53-.53l-3.25-3.25a.75.75 0 0 0-1.061 1.06l1.97 1.97H1.75a.75.75 0 1 0 0 1.5h10.379z"
              clip-rule="evenodd" />
          </svg>

        </button>
      </div>
    </div>
  </div>
  <!-- box-2 end -->

  <br><br>
  <hr width="100%" size="2" color="#555255" class="hrline">

  <br>

  <!-- box-3 start -->

  <div class="row">
    <div class="img-wrapper">
      <img src="./image/api.jpg" alt="">
    </div>
    <div class="content-wrapper">
      <div class="content">
        <span class="text-wrapper">
          <span></span>
        </span>
        <h2>Powerful Integrations and APIs
        </h2>
        <p>Effortlessly connect with popular tools like Slack, Stripe, and Gmail. Enhance your app’s functionality with
          our robust APIs, extending its capabilities to meet your specific needs.
        </p>
        <button class="btn getstarted" type="submit">Integrations

          <svg xmlns="http://www.w3.org/2000/svg" width="1.2rem" height="1.2rem" viewBox="0 0 16 16" class="icon">
            <path fill="white" fill-rule="evenodd"
              d="M10.159 10.72a.75.75 0 1 0 1.06 1.06l3.25-3.25L15 8l-.53-.53l-3.25-3.25a.75.75 0 0 0-1.061 1.06l1.97 1.97H1.75a.75.75 0 1 0 0 1.5h10.379z"
              clip-rule="evenodd" />
          </svg>

        </button>
      </div>
    </div>
  </div>

  <!-- box-3 end -->

  <br><br>
  <hr width="100%" size="2" color="#555255" class="hrline">

  <br>

  <!-- box-4 start -->

  <div class="row">
    <div class="img-wrapper">
      <img src="./image/tailoredworkflow.jpg" alt="">
    </div>
    <div class="content-wrapper">
      <div class="content">
        <span class="text-wrapper">
          <span></span>
        </span>
        <h2>Tailored Workflows
        </h2>
        <p>Incorporate custom logic with Actions to automate repetitive tasks and craft powerful workflows. Enhance your
          app's efficiency and effectiveness by building workflows that fit your unique business needs.
        </p>
        <button class="btn getstarted" type="submit">Actions
          <svg xmlns="http://www.w3.org/2000/svg" width="1.2rem" height="1.2rem" viewBox="0 0 16 16" class="icon">
            <path fill="white" fill-rule="evenodd"
              d="M10.159 10.72a.75.75 0 1 0 1.06 1.06l3.25-3.25L15 8l-.53-.53l-3.25-3.25a.75.75 0 0 0-1.061 1.06l1.97 1.97H1.75a.75.75 0 1 0 0 1.5h10.379z"
              clip-rule="evenodd" />
          </svg>

        </button>
      </div>
    </div>
  </div>

  <!-- box-4 end -->

  <br><br>
  <hr width="100%" size="2" color="#555255" class="hrline">

  <br><br>

  <!-- ai box start -->

  <div class="expert">
    Streamline Your Business with <span class="ai">TechFusion AI.</span>
  </div>
  <p class="expert_para">Minimize repetitive tasks with advanced AI. Automate processes such as composing customer
    emails, extracting data from invoices, transcribing audio, and more, to boost productivity and efficiency.
  </p>
  <br>
  <button class="button">
    Try TechFusion AI
    <svg xmlns="http://www.w3.org/2000/svg" width="1.2rem" height="1.2rem" viewBox="0 0 16 16" class="icon">
      <path fill="white" fill-rule="evenodd"
        d="M10.159 10.72a.75.75 0 1 0 1.06 1.06l3.25-3.25L15 8l-.53-.53l-3.25-3.25a.75.75 0 0 0-1.061 1.06l1.97 1.97H1.75a.75.75 0 1 0 0 1.5h10.379z"
        clip-rule="evenodd" />
    </svg></button>

  <!-- ai box end -->


  <br><br><br>
  <br><br><br><br>


  <!-- footer start -->


  <footer class="footer">
    <div class="container">
      <div class="roww">
        <div class="footer-col">
          <h4>Platform</h4>
          <ul>
            <li><a href="#">Apps</a></li>
            <li><a href="#">Data Sources</a></li>
            <li><a href="#">TechFusion AI</a></li>
            <li><a href="#">Security</a></li>
            <li><a href="#">Actions</a></li>
            <li><a href="#">Integrations</a></li>
          </ul>
        </div>
        <div class="footer-col">
          <h4>TechFusion For</h4>
          <ul>
            <li><a href="#">Business</a></li>
            <li><a href="#">Enterprise</a></li>
            <li><a href="#">IT & Engineering</a></li>
            <li><a href="#">Agencies</a></li>
            <li><a href="#">Field Teams</a></li>
            <li><a href="#">Operations</a></li>
          </ul>
        </div>
        <div class="footer-col">
          <h4>Resources</h4>
          <ul>
            <li><a href="#">Hire an Expert</a></li>
            <li><a href="#">Become an Expert</a></li>
            <li><a href="#">Community</a></li>
            <li><a href="#">Events</a></li>
            <li><a href="#">Pricing</a></li>
            <li><a href="#">Help Center</a></li>
          </ul>
        </div>
        <div class="footer-col">
          <h4>follow us</h4>
          <div class="social-links">
            <a href="https://www.instagram.com/accounts/login/" target="_blank"><i class="fab fa-instagram"></i></a>
            <a href="https://x.com/i/flow/login" target="_blank"><i class="fa-brands fa-x-twitter"></i></a>
            <a href="https://api.linkedin.com/login" target="_blank"><i class="fab fa-linkedin-in"></i></a>
            <a href="https://github.com/login" target="_blank"><i class="fa-brands fa-github"></i></a>
          </div>
        </div>
      </div>
    </div>
    <hr width="100%" size="2" color="#555255" class="hrline">
    <center>
      <h3 class="copyright"> © 2024 TechFusion. All Rights Reserved. Created by Krish Patidar.
      </h3>
    </center>
  </footer>

  <!-- footer end -->


  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
    crossorigin="anonymous"></script>

  <script src="https://kit.fontawesome.com/a81368914c.js"></script>

  <script src="https://unpkg.com/scrollreveal"></script>

  <script src="main.js"></script>

</body>

</html>