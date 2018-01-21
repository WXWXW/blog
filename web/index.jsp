<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link rel="stylesheet" href="./static/mycss/public.css" type="text/css">
    <link rel="stylesheet" href="./static/mycss/index.css" type="text/css">
  </head>
  <body>
    <%@include file="common/header.jsp" %>

    
    <div class='h600' style='border:1px solid #ccc;background-color: #1e6bad;margin:0 auto'>
    <table>
			<c:forEach var="item" items="${requestScope.list}" varStatus="status">
				<tr>
					<td><a href=${item.url}>${item.title}</a></td>
					<td class="right"><time>${item.time}</time></td>
				</tr>
			</c:forEach>
		<tr>
			<td><a href="/posts/2015-01-27-bounded-regression-on-data-streams.html">Bounded regression on data streams</a></td>
			<td class="right"><time>2015-01-27</time></td>
		</tr>
		<tr>
			<td><a href="/posts/2014-12-13-tsp-supnick-matrix.html">TSP, Max TSP and Supnick</a></td>
			<td class="right"><time>2014-12-13</time></td>
		</tr>
		<tr>
			<td><a href="/posts/2014-11-22-applications-of-finger-tree.html">Applications of finger trees</a></td>
			<td class="right"><time>2014-11-22</time></td>
		</tr>
		<tr>
			<td><a href="/posts/2014-11-15-speedup-incremental-computation-with-two-stacks.html">Speed up incremental computation with two stacks</a></td>
			<td class="right"><time>2014-11-15</time></td>
		</tr>
		<tr>
			<td><a href="/posts/2014-11-11-number-of-edges-in-acyclic-flow.html">Number of edges in acyclic flow</a></td>
			<td class="right"><time>2014-11-11</time></td>
		</tr>
		<tr>
			<td><a href="/posts/2014-11-04-isotonic-function-preserving-grid-in-1d.html">Isotonic function preserving grid in <span class="math inline">\([0,1]\)</span></a></td>
			<td class="right"><time>2014-11-04</time></td>
		</tr>
		<tr>
			<td><a href="/posts/2014-10-30-reducing-edge-connectivity-to-vertex-connectivity-with-small-increas-in-edges.html">Reducing edge connectivity to vertex connectivity with small increase in edges</a></td>
			<td class="right"><time>2014-10-30</time></td>
		</tr>
		<tr>
			<td><a href="/posts/2014-10-13-maximum-sum-k-disjoint-subarrays.html">Maximum sum <span class="math inline">\(k\)</span>-disjoint subarrays</a></td>
			<td class="right"><time>2014-10-13</time></td>
		</tr>
		<tr>
			<td><a href="/posts/2014-10-12-pack-a-histogram.html">Pack a histogram</a></td>
			<td class="right"><time>2014-10-12</time></td>
		</tr>
	</table>
    </div>
	<%@include file="common/footer.jsp" %>
</body>
</html>     

