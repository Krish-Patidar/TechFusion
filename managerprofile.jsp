<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
<style>
	body {
    background: #f5f5f5;
    margin-top: 20px;
}

.ui-w-80 {
    width : 80px !important;
    height: auto;
}

.btn-default {
    border-color: rgba(24, 28, 33, 0.1);
    background  : rgba(0, 0, 0, 0);
    color       : #4E5155;
}

label.btn {
    margin-bottom: 0;
}

.btn-outline-primary {
    border-color: #26B4FF;
    background  : transparent;
    color       : #26B4FF;
}

.btn {
    cursor: pointer;
}

.text-light {
    color: #babbbc !important;
}

.btn-facebook {
    border-color: rgba(0, 0, 0, 0);
    background  : #3B5998;
    color       : #fff;
}

.btn-instagram {
    border-color: rgba(0, 0, 0, 0);
    background  : #000;
    color       : #fff;
}

.card {
    background-clip: padding-box;
    box-shadow     : 0 1px 4px rgba(24, 28, 33, 0.012);
}

.row-bordered {
    overflow: hidden;
}

.account-settings-fileinput {
    position  : absolute;
    visibility: hidden;
    width     : 1px;
    height    : 1px;
    opacity   : 0;
}

.account-settings-links .list-group-item.active {
    font-weight: bold !important;
}

html:not(.dark-style) .account-settings-links .list-group-item.active {
    background: transparent !important;
}

.account-settings-multiselect~.select2-container {
    width: 100% !important;
}

.light-style .account-settings-links .list-group-item {
    padding     : 0.85rem 1.5rem;
    border-color: rgba(24, 28, 33, 0.03) !important;
}

.light-style .account-settings-links .list-group-item.active {
    color: #4e5155 !important;
}

.material-style .account-settings-links .list-group-item {
    padding     : 0.85rem 1.5rem;
    border-color: rgba(24, 28, 33, 0.03) !important;
}

.material-style .account-settings-links .list-group-item.active {
    color: #4e5155 !important;
}

.dark-style .account-settings-links .list-group-item {
    padding     : 0.85rem 1.5rem;
    border-color: rgba(255, 255, 255, 0.03) !important;
}

.dark-style .account-settings-links .list-group-item.active {
    color: #fff !important;
}

.light-style .account-settings-links .list-group-item.active {
    color: #4E5155 !important;
}

.light-style .account-settings-links .list-group-item {
    padding     : 0.85rem 1.5rem;
    border-color: rgba(24, 28, 33, 0.03) !important;
}
.notifications-dropdown {
  display: none;
  position: absolute;
  top: 20px;
  right: 0;
  width: 300px;
  background-color: #fff;
  border: 1px solid #ccc;
  box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
  z-index: 1000;
  padding: 10px;
  border-radius: 8px;
}

.cardd {
  display: flex;
  align-items: center;
  padding: 10px;
  border-bottom: 1px solid #f1f1f1;
}

.containerr {
  display: flex;
  align-items: center;
}

.left .status-ind {
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background-color: #28a745; /* Active notification indicator */
}

.right {
  display: flex;
  flex-direction: column;
  margin-left: 10px;
}

.text-content {
  font-size: 14px;
  margin: 0;
}

.text-link {
  color: #007bff;
  text-decoration: none;
}

.time {
  font-size: 12px;
  color: #6c757d;
}

.button-wrap {
  display: flex;
  gap: 5px;
  margin-top: 5px;
}

.primary-cta, .secondary-cta {
  padding: 5px 10px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.primary-cta {
  background-color: #007bff;
  color: #fff;
}

.secondary-cta {
  background-color: #e9ecef;
  color: #000;
}

.primary-cta:hover, .secondary-cta:hover {
  opacity: 0.8;
}

@import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap");

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
    font-family: "Poppins", sans-serif;
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

.header{
    font-size: 4rem;
    font-weight: 600;
    font-family: var(--header-font);
    line-height: 110%;
    letter-spacing: -.03em;
    color: #000;
    text-align: center;
}
.header_para{
    --text-opacity: 1;
    color: #1d1d1dd4;
    text-align: center;
    font-size: 1.3rem;
    line-height: 1.3;
    margin-top: 2rem;
}
.getstarted {
    margin-right: 0.8rem;
    border-radius: 2rem;
    border: 1.5px solid transparent;
    background: #4227dd;
    font-size: 1rem;
    line-height: 1.5rem;
    color: #ffffff;
    font-family: "Work Sans", sans-serif;
    font-optical-sizing: auto;
    font-weight: 600;
    font-style: normal;
    margin-top: 1rem;
}

.getstarted:hover {
    background: #341cba;
    color: #ffffff;
}

.containerr {
    max-width: 100%;
    background-color: #000;
    padding-top: 20px;
    padding-bottom: 20px;
    margin: 0 auto;
}

.roww {
    display: flex;
    flex-wrap: wrap;
}

ul {
    list-style: none;
}

.footer {
    background-color: #000;
    padding: 10px 0;
}

.footer-col {
    width: 25%;
    padding: 0 15px;
}

.footer-col h4 {
    font-size: 18px;
    color: #ffffff;
    text-transform: capitalize;
    margin-bottom: 35px;
    font-weight: 500;
    position: relative;
}

.footer-col h4::before {
    content: '';
    position: absolute;
    left: 0;
    bottom: -10px;
    background-color: #4227dd;
    height: 2px;
    box-sizing: border-box;
    width: 50px;
}

.footer-col ul li:not(:last-child) {
    margin-bottom: 10px;
}

.footer-col ul li a {
    font-size: 16px;
    text-transform: capitalize;
    color: #ffffff;
    text-decoration: none;
    font-weight: 300;
    color: #bbbbbb;
    display: block;
    transition: all 0.3s ease;
}

.footer-col ul li a:hover {
    color: #ffffff;
    padding-left: 8px;
}

.footer-col .social-links a {
    display: inline-block;
    height: 40px;
    width: 40px;
    background-color: rgba(255, 255, 255, 0.2);
    margin: 0 8px 8px 0;
    text-align: center;
    line-height: 40px;
    border-radius: 50%;
    color: #ffffff;
    transition: all 0.5s ease;
}

.footer-col .social-links a:hover {
    color: #ffffff;
    background-color: #4227dd;
}
.footer-col h4,
.footer-col ul{
    margin-left: 15px;
}
.footer-col .social-links{
    margin-left: 0;
}

@media(max-width: 767px) {
    .footer-col {
        width: 50%;
        margin-bottom: 30px;
    }
    .footer-col h4,
    .footer-col ul {
        margin-left: 15px;
    }
    .footer-col .social-links {
        margin-left: 0;
    }
}

@media(max-width: 574px) {
    .footer-col {
        width: 100%;
    }
    .footer-col h4,
    .footer-col ul {
        margin-left: 15px;
    }
    .footer-col .social-links {
        margin-left: 0;
    }
}

.copyright {
    margin-top: 3rem;
    font-family: "Work Sans", sans-serif;
    font-optical-sizing: auto;
    font-weight: 400;
    font-style: normal;
    margin-bottom: 1.5rem;
    font-size: 1rem;
    max-width: 100%;
    color: #ffffff;
}

@media screen and (max-width: 991px) {
    .row .img-wrapper img{
        width: 80%;
    }
}
@media screen and (max-width: 965px) {
    .cs{
        margin-bottom: 2rem;
    }
    .custom-image{
        margin-bottom: 2rem;
    }
    .custom-button{
        margin-top: 1rem;
    }
}
@media screen and (max-width: 939px) {
    .footer-col .social-links {
        gap: 5px; 
    }

    .footer-col .social-links a {
        height: 35px;
        width: 35px;
        line-height: 35px;
    }
    .containerr {
        padding: 0; 
        width: 100%; 
    }

    .footer-col {
        width: 50%; 
        margin-bottom: 30px;
    }

    .footer-col h4,
    .footer-col ul {
        margin-left: 15px; 
    }
    
    .footer-col .social-links {
        margin-left: 15px;
    }
    .footer{
        padding-top: 2rem;
    }
}
@media screen and (max-width: 769px) {
    .header.cs{
        font-size: 3rem;

    }
}
@media screen and (max-width: 516px) {
    .header{
        font-size: 3rem;
    }
    .cs-para{
        text-align: center;
    }
}
@media screen and (max-width: 481px) {
    .text-box p{
        text-align: center;
    }
    .text-box h2{
        text-align: center;
    }
    .custom-button{
        margin-left: 2rem;
    }
    .cs-para{
        margin-right: 0;
        text-align: center;
    }
    .header_para{
        margin-right: 0;
        margin-left: 0;
        text-align: center;
    }
}
@media screen and (max-width: 472px) {
    .header{
        font-size: 2.4rem;
    }
    .custom-image{
        width: 75%;
    }
    .cs-para{
        text-align: center;
    }
}

.switcher-label{
	color: #000000;
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
  <button class="btn signup" type="button" onclick="window.location.href='Logout'">Log Out</button>
</form>

  </div>
</nav>

 
  </div>
</div>
 <div class="notifications-dropdown" id="notificationsDropdown">
      <div class="cardd">
        <div class="container">
          <div class="left">
            <div class="status-ind"></div>
          </div>
          <div class="right">
            <div class="text-wrap">
              <p class="text-content">
                <a class="text-link" href="#">Diwali Party</a> will be held on 
                <a class="text-link" href="#">November 10, 2024!</a> Join us for a night of celebration, lights, and festivities.
              </p>
              <p class="time">2 hours ago</p>
            </div>
          </div>
        </div>
      </div>
    </div>





	<br>
	<br>
	<br>

    <div class="container light-style flex-grow-1 container-p-y">
        <h4 class="font-weight-bold py-3 mb-4">
            Profile Preferences
        </h4>
        <div class="card overflow-hidden">
            <div class="row no-gutters row-bordered row-border-light">
                <div class="col-md-3 pt-0">
                    <div class="list-group list-group-flush account-settings-links">
                        <a class="list-group-item list-group-item-action active" data-toggle="list"
                            href="#account-general">General</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-change-password">Change password</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-info">Info</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-social-links">Social links</a>
                      
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-notifications">Notifications</a>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="account-general">
                            <div class="card-body media align-items-center">
                                <img src="image/manager1.jpeg" alt
                                    class="d-block ui-w-80">
                                <div class="media-body ml-4">
                                    <label class="btn btn-outline-primary">
                                        Upload new photo
                                        <input type="file" class="account-settings-fileinput">
                                    </label> &nbsp;
                                    <button type="button" class="btn btn-default md-btn-flat">Reset</button>
                                    <div class="text-light small mt-1">Supported formats: JPG, GIF, or PNG. Maximum file size: 800KB.</div>
                                </div>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="form-label">UserId</label>
                                    <input type="text" class="form-control mb-1" value="vaishnavi01">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Name</label>
                                    <input type="text" class="form-control" value="Vaishnavi Patidar">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">E-mail</label>
                                    <input type="text" class="form-control mb-1" value="vaishnavi01@gmail.com">
                                    <div class="alert alert-warning mt-3">
												Your email has not been verified. Please check your inbox for the confirmation message.<br>
                                        <a href="javascript:void(0)">Click here to resend the confirmation</a>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Company</label>
                                    <input type="text" class="form-control" value="TechFusion Innovations Pvt Ltd">
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="account-change-password">
                            <div class="card-body pb-2">
                                <div class="form-group">
                                    <label class="form-label">Current password</label>
                                    <input type="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">New password</label>
                                    <input type="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Repeat new password</label>
                                    <input type="password" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="account-info">
                            <div class="card-body pb-2">
                                <div class="form-group">
                                    <label class="form-label">Bio</label>
                                    <textarea class="form-control"
                                        rows="5">Vaishnavi Patidar
													Managing Director, TechFusion

											Vaishnavi Patidar is the Managing Director of TechFusion, bringing over five years of dynamic experience in the IT industry. Under her leadership, TechFusion has successfully navigated the challenges of the tech landscape, driving innovation and fostering a culture of excellence. Vaishnavi’s strategic vision and commitment to leveraging cutting-edge technologies have positioned TechFusion as a key player in the market. With a strong background in software development and project management, she is dedicated to empowering her team and delivering exceptional solutions to clients worldwide. Passionate about technology and leadership, Vaishnavi continues to inspire the next generation of tech professionals.</textarea>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Birthday</label>
                                    <input type="text" class="form-control" value="August 6, 1998">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Country</label>
                                    <select class="custom-select">
                                        <option>USA</option>
                                        <option selected>India</option>
                                        <option>Australia</option>
                                        <option>Japan</option>
                                        <option>UK</option>
                                    </select>
                                </div>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body pb-2">
                                <h6 class="mb-4">Contacts</h6>
                                <div class="form-group">
                                    <label class="form-label">Phone</label>
                                    <input type="text" class="form-control" value="+91 9829263738">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Website</label>
                                    <input type="text" class="form-control" value="www.vaishnaviportfolio.com">
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="account-social-links">
                            <div class="card-body pb-2">
                                <div class="form-group">
                                    <label class="form-label">Twitter</label>
                                    <input type="text" class="form-control" value="https://twitter.com/vaishnavi01">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Facebook</label>
                                    <input type="text" class="form-control" value="https://www.facebook.com/vaishnavi01">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Google+</label>
                                    <input type="text" class="form-control" value>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">LinkedIn</label>
                                    <input type="text" class="form-control" value="https://www.linkedin.com/vaishnavi01">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Instagram</label>
                                    <input type="text" class="form-control" value="https://www.instagram.com/vaishnavi01">
                                </div>
                            </div>
                        </div>
                      
                        <div class="tab-pane fade" id="account-notifications">
                            <div class="card-body pb-2">
                                <h6 class="mb-4">Activity</h6>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Notify me via email when someone leaves a comment on my article</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Send me an email notification when someone replies to my forum thread</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input">
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Notify me by email when someone starts following me</span>
                                    </label>
                                </div>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body pb-2">
                                <h6 class="mb-4">Application</h6>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Updates and Notifications</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input">
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Weekly Product News</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Weekly Blog Highlights</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-right mt-3">
            <button type="button" class="btn btn-primary">Save changes</button>&nbsp;
            <button type="button" class="btn btn-default">Cancel</button>
        </div>
    </div>
    
    <br><br><br><br><br>
    
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
	
		</div>
	</footer>

	<!-- footer end -->



    
    
    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">

    </script>
    
    
    
    <script>
    document.querySelector('.btn-primary').addEventListener('click', function () {

    	const username = document.querySelector('input[value="nmaxwell"]').value;
        const name = document.querySelector('input[value="Nelle Maxwell"]').value;
        const email = document.querySelector('input[value="nmaxwell@mail.com"]').value;
        const company = document.querySelector('input[value="Company Ltd."]').value;
        const bio = document.querySelector('textarea').value;
        const birthday = document.querySelector('input[value="May 3, 1995"]').value;
        const country = document.querySelector('.custom-select').value;
        const phone = document.querySelector('input[value="+0 (123) 456 7891"]').value;
        const website = document.querySelector('input[value]').value;
        
        document.querySelector('.username-display').innerText = username;
        document.querySelector('.name-display').innerText = name;
        document.querySelector('.email-display').innerText = email;
        document.querySelector('.company-display').innerText = company;
        document.querySelector('.bio-display').innerText = bio;
        document.querySelector('.birthday-display').innerText = birthday;
        document.querySelector('.country-display').innerText = country;
        document.querySelector('.phone-display').innerText = phone;
        document.querySelector('.website-display').innerText = website;

        alert("Changes saved successfully!");
    });
</script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
    crossorigin="anonymous"></script>

  <script src="https://kit.fontawesome.com/a81368914c.js"></script>

  <script src="https://unpkg.com/scrollreveal"></script>

  <script src="main.js"></script>
  <script>
  $(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})

  </script>
  
    <script>
        function showNotifications() {
  document.getElementById("notificationsDropdown").style.display = "block";
}

function hideNotifications() {
  document.getElementById("notificationsDropdown").style.display = "none";
}

      </script>
	
</body>
</html>