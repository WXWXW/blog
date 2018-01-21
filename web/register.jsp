<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
//String path = request.getContextPath();
//String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>register</title>
    <link rel="stylesheet" href="./static/mycss/public.css" type="text/css">
  	<link rel="stylesheet" href="./static/mycss/register.css" type="text/css">
  	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
  	</head>
  <body>
 		<div class="main">
		<form action="register.action" method="post" namespace="/" validation="true">
	  			<div class='inputBox mt50 ml32'>
					<input type="text" id="name" name="username"  autocomplete="off" maxlength="60" placeholder="Email">
					<s:fielderror fieldName="check.name"/>
				</div>
				<div class='inputBox mt50 ml32 c1'>
	          		<input type="password" id="password" name="userpass"  autocomplete="off" maxlength="60" placeholder="Please set the password ">
	          		<s:fielderror fieldName="check.password"/>
	        	</div>
	        	<div class='inputBox mt50 ml32 c1'>
	          		<input type="password" id="repassword" name="userrepass"  autocomplete="off" maxlength="60" placeholder="Please confirm the password ">
	        	</div>  
				<div class='mt50 ml32'>
					<button type="submit" class="register_btn">Register</button>
		  		</div>
	  </form>
 	  </div>
 	  

  
  </body>
</html>
