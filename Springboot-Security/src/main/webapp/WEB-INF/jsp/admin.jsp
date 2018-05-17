<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="webjars/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
<script src="webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}" style="font-size: 30px; color: red;">Redbus</a>
		</div>
		<ul class="nav navbar-nav navbar-right">

			<li><c:choose>
					<c:when test="${pageContext.request.userPrincipal.name == null}">
						<a href="${pageContext.request.contextPath}/login"><span
							class="glyphicon glyphicon-user"></span> Login</a>
					</c:when>
					<c:otherwise>
						<a href="#"><span class="glyphicon glyphicon-user"></span>${pageContext.request.userPrincipal.name}</a>
					</c:otherwise>
				</c:choose></li>
			<li><a href="${pageContext.request.contextPath}/admin"><span
					class="glyphicon glyphicon-log-in"></span> Admin</a></li>
		</ul>
	</div>
	</nav>
	<br>
	<br>
	<center>
		<h3>Admin page</h3>
		<button type="button" class="btn btn-info">Add Bus</button>
		<button type="button" class="btn btn-info">Update Bus</button>
		<button type="button" class="btn btn-info">Delete Bus</button>
		<br> <br>
		<div>
			<a href="${pageContext.request.contextPath}/logout">Logout</a>
		</div>

	</center>
</body>
</html>