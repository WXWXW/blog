<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>A</title>
  <link rel="stylesheet" href="../static/mycss/public.css" type="text/css">
  </head>
  
  <body>
    <div class="header">
    	<div class='logo'>My Blogs</div>
    		<ul>
    			<li class='first'><a>Home</a></li>
    			<li><a href="./index.jsp">Journal</a></li>
    			<li><a href="../write.jsp">Write</a></li>
				<li><a>Manage</a></li>
				<li>${applicationScope.count}</li>
    		</ul>
    	<div class='login'>
	    	<c:choose>
	    		<c:when test="${empty requestScope.username}">
		    		<span><a href="../login.jsp">Login in</a></span>
		    		<span>|</span>
		    		<span><a href="../register.jsp">Register</a></span>
	    		</c:when>
	    		<c:otherwise>
	    			<span><a>Welcome,${requestScope.username}</a></span>
		    		<span>|</span>
		    		<span><a href="../login.jsp">Login out</a></span>
	    		</c:otherwise>
	    	</c:choose>
    	</div>
    </div>
  </body>
</html>
