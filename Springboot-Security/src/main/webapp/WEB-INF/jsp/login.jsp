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
<title>Login</title>
</head>
<body>



	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}" style="font-size: 30px; color: red;">Redbus</a>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="${pageContext.request.contextPath}/login"><span
					class="glyphicon glyphicon-user"></span> Login</a></li>
			<li><a href="${pageContext.request.contextPath}/admin"><span
					class="glyphicon glyphicon-log-in"></span> Admin</a></li>
		</ul>
	</div>
	</nav>
	<br>
	<br>
	<div class="row">
		<div class="col-md-3"></div>

		<div class="col-md-6">
			<center>
				<h3 style="color: green;">Login</h3>
			</center>
			<c:if test="${param.error != null }">
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="alert alert-danger col-sm-6">Username or password
						not correct</div>
					<div class="col-sm-3"></div>
				</div>
			</c:if>
			<form class="form-horizontal"
				action="${pageContext.request.contextPath}/spring-login"
				method="post">
				<div class="form-group">
					<label class="control-label col-sm-4" for="username">Username
						:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="username"
							id="username" placeholder="Username" required="true">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-4" for="destination">Password
						:</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" name="password"
							id="password" placeholder="Password" required="true">
					</div>
				</div>
				<div class="form-group">
					<div class="checkbox col-sm-offset-4 col-sm-10">
						<label><input type="checkbox" name="remember-me">Remember
							me</label>
					</div>
				</div>
				<!-- csrf token generation -->
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-10">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</div>
			</form>
		</div>

		<div class="col-md-3"></div>
	</div>




	<%-- <h3>Kloud9 Login page</h3>

	<form action="${pageContext.request.contextPath}/spring-login"
		method="post">
		<label>User Name :</label><input type="text" name="username"><br>
		<label>Password :</label><input type="password" name="password"><br>
		<input type="submit" value="Login">
	</form> --%>
</body>
</html>