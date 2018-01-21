
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
//String path = request.getContextPath();
//String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	  <link rel="stylesheet" href="./static/mycss/public.css" type="text/css">
  	  <link rel="stylesheet" href="./static/mycss/login.css" type="text/css">
  </head>
  <body>
  <%@include file="common/header.jsp"%>
	<div class='content'>
		<div class='logo'>Lgoin in</div>
	<form action="./checkuser" method="post">
  		<div class='inputBox mt50 ml32'>
			<input type="text" id="username" name="username" autocomplete="off" maxlength="60" placeholder="email">
		</div>
		<div class='inputBox mt50 ml32 c1'>
          <input type="password" id="password" name="userpass"  autocomplete="off" maxlength="60" placeholder="password">
        </div>
		 <div class='mt50 ml32'>
			<button class="login_btn">Login</button>
	  	</div>
	  </form>
	</div>
  	
  </body>
</html>
