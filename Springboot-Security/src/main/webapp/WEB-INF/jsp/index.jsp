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
<title>Redbus</title>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}"
				style="font-size: 30px; color: red;">Redbus</a>
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
	<div class="row">
		<div class="col-md-3"></div>

		<div class="col-md-6">
			<br>
			<c:if test="${param.logout != null }">
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="alert alert-success col-sm-6">Logout Successfully</div>
					<div class="col-sm-3"></div>
				</div>
			</c:if>
			<center>
				<h3 style="color: green;">Search Journey</h3>
			</center>
			<form class="form-horizontal"
				action="${pageContext.request.contextPath}/search" method="post">
				<div class="form-group">
					<label class="control-label col-sm-4" for="source">From :</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="source" id="source"
							placeholder="Source" required="true">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-4" for="destination">To
						:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="destination"
							id="destination" placeholder="Destination" required="true">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-4" for="date">Journey
						Date :</label>
					<div class="col-sm-4">
						<input type="date" class="form-control" name="journeyDate"
							id="date">
					</div>
				</div>
				<!-- csrf token generation -->
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-10">
						<button type="submit" class="btn btn-primary">Search</button>
					</div>
				</div>
			</form>
		</div>

		<div class="col-md-3"></div>
	</div>
	<c:if test="${journies.size() > 0}">
		<div class="container">
			<div class="well" style="font-size: 18px;">Available Busses
				from ${journies.get(0).source} To ${journies.get(0).destination}</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Bus</th>
						<th>Bording</th>
						<th>Dropping</th>
						<th>Rating</th>
						<th>Seats</th>
						<th>Fare</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${journies}" var="journey">
						<tr>
							<td>${journey.busName}<br>${journey.busType}</td>
							<td>${journey.boardingTime}</td>
							<td>${journey.droppingTime}</td>
							<td>${journey.rating}</td>
							<td>${journey.seats}</td>
							<td>${journey.fare}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</c:if>
</body>
</html>