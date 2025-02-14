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
  <link rel="stylesheet" href="solutions.css" />
  <title>Solutions</title>
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
          <a class="nav-link link_item" href="#">Solutions</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link link_item" href="platform.jsp">Platform</a>
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
    Innovative AI-Driven Solutions <br> for Your Business
  </div>
  <br>
  <p class="header_para">At TechFusion, we harness the power of Artificial Intelligence to create tailored solutions
    that drive business success. Whether you're looking to enhance operational efficiency, personalize customer
    experiences, or unlock new revenue streams, our AI-driven services are designed to meet your unique needs.</p>

  <center><button class="btn getstarted" type="submit">Explore Our AI Services</button></center>

  <!-- header end -->

  <br><br><br>
  <br><br><br>

  <!-- core solutions start -->

  <div class="core-solutions-container">
    <h2 class="header cs">AI-Driven Core Solutions
    </h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <i class="fa-solid fa-arrow-right fa-2xl" style="color: #000000;"></i>
  </div>
  <p class="header_para cs-para">At TechFusion, we offer a suite of AI-driven core solutions designed to transform
    your business. From data analytics to machine learning, our cutting-edge technologies empower you to innovate,
    optimize, and stay ahead in a competitive landscape.</p>

  <br>

  <div class="row">
    <div class="img-wrapper">
      <img src="./image/coresolution1.jpg" alt="">
    </div>
    <div class="content-wrapper">
      <div class="content">
        <span class="text-wrapper">
          <span></span>
        </span>
        <h2>AI-Powered Data Analytics</h2>
        <p>Unlock the full potential of your data with TechFusion's AI-powered data analytics solutions. Our
          cutting-edge technology allows you to process and analyze vast amounts of data quickly and accurately. By
          turning raw data into actionable insights, we empower your business to make data-driven decisions that enhance
          efficiency and profitability. From identifying market trends to optimizing internal processes, our advanced
          algorithms provide you with the foresight needed to stay ahead of the competition.</p>
          <button class="btn getstarted" type="submit">Data Analytics
            <svg xmlns="http://www.w3.org/2000/svg" width="1.2rem" height="1.2rem" viewBox="0 0 16 16" class="icon">
              <path fill="white" fill-rule="evenodd"
                d="M10.159 10.72a.75.75 0 1 0 1.06 1.06l3.25-3.25L15 8l-.53-.53l-3.25-3.25a.75.75 0 0 0-1.061 1.06l1.97 1.97H1.75a.75.75 0 1 0 0 1.5h10.379z"
                clip-rule="evenodd" />
            </svg>
          </button>
              </div>
    </div>
  </div>

  <br>
  <div class="row">
    <div class="img-wrapper">
      <img src="./image/coresolution2.jpg" alt="">
    </div>
    <div class="content-wrapper">
      <div class="content">
        <span class="text-wrapper">
          <span></span>
        </span>
        <h2>Machine Learning Models
        </h2>
        <p>Stay at the forefront of innovation with TechFusion's custom machine learning models tailored to your unique
          business needs. Our team of experts specializes in creating models that not only meet your current
          requirements but also adapt and grow with your business. By leveraging supervised, unsupervised, and
          reinforcement learning techniques, we develop robust models capable of handling complex tasks, from predictive
          analytics to automation.</p>
          <button class="btn getstarted" type="submit">Explore More
            <svg xmlns="http://www.w3.org/2000/svg" width="1.2rem" height="1.2rem" viewBox="0 0 16 16" class="icon">
              <path fill="white" fill-rule="evenodd"
                d="M10.159 10.72a.75.75 0 1 0 1.06 1.06l3.25-3.25L15 8l-.53-.53l-3.25-3.25a.75.75 0 0 0-1.061 1.06l1.97 1.97H1.75a.75.75 0 1 0 0 1.5h10.379z"
                clip-rule="evenodd" />
            </svg>
          </button>
              </div>
    </div>
  </div>
  <br>
  <br><br>
  <div class="core-solutions-container">
    <h2 class="header cs">Tailored AI Custom Solutions
    </h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <i class="fa-solid fa-arrow-right fa-2xl" style="color: #000000;"></i>
  </div>
  <p class="header_para cs-para">TechFusion's tailored AI custom solutions are crafted to meet the specific needs
    of your business. We provide personalized AI services that seamlessly integrate into your existing systems, driving innovation and efficiency.</p>


  <!-- core solutions end -->

  <!-- custom solutions start -->

  <div class="row">
    <div class="img-wrapper">
      <img src="./image/coresolution1.jpg" alt="">
    </div>
    <div class="content-wrapper">
      <div class="content">
        <span class="text-wrapper">
          <span></span>
        </span>
        <h2>Integration Services
        </h2>
        <p>Seamlessly integrate AI into your business with TechFusion's comprehensive AI integration services. Our
          end-to-end approach ensures a smooth transition from traditional systems to AI-enhanced operations, allowing
          your business to fully leverage the power of artificial intelligence. Trust TechFusion to transform your business by integrating
          AI solutions that deliver lasting value and competitive advantage.
        </p>
        <button class="btn getstarted" type="submit">Integration
          <svg xmlns="http://www.w3.org/2000/svg" width="1.2rem" height="1.2rem" viewBox="0 0 16 16" class="icon">
            <path fill="white" fill-rule="evenodd"
              d="M10.159 10.72a.75.75 0 1 0 1.06 1.06l3.25-3.25L15 8l-.53-.53l-3.25-3.25a.75.75 0 0 0-1.061 1.06l1.97 1.97H1.75a.75.75 0 1 0 0 1.5h10.379z"
              clip-rule="evenodd" />
          </svg>

        </button>
      </div>
    </div>
  </div>



  <div class="row">
    <div class="img-wrapper">
      <img src="./image/coresolution2.jpg" alt="">
    </div>
    <div class="content-wrapper">
      <div class="content">
        <span class="text-wrapper">
          <span></span>
        </span>
        <h2>Automation Solutions
        </h2>
        <p>Transform your business operations with TechFusion's AI-powered automation solutions. Our advanced automation
          technology is designed to streamline processes, eliminate repetitive tasks, and significantly reduce the risk of
          human error. With TechFusion, you can unlock the full potential of automation to stay ahead in today's fast-paced business
          environment.
        </p>
        <button class="btn getstarted" type="submit">Solutions
          <svg xmlns="http://www.w3.org/2000/svg" width="1.2rem" height="1.2rem" viewBox="0 0 16 16" class="icon">
            <path fill="white" fill-rule="evenodd"
              d="M10.159 10.72a.75.75 0 1 0 1.06 1.06l3.25-3.25L15 8l-.53-.53l-3.25-3.25a.75.75 0 0 0-1.061 1.06l1.97 1.97H1.75a.75.75 0 1 0 0 1.5h10.379z"
              clip-rule="evenodd" />
          </svg>
        </button>
      </div>
    </div>
  </div>

  <br><br><br>

  <!-- custom solutions end -->

  <!-- footer start -->


  <footer class="footer">
    <div class="containerr">
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
      <center>
        <h3 class="copyright"> © 2024 TechFusion. All Rights Reserved. Created by Krish Patidar.
        </h3>
      </center>
    </div>
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