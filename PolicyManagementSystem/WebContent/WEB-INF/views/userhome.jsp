<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UIR User Home</title>
<style type="text/css">
body {
	background-image:
		url("https://money-plans.com/wp-content/uploads/2019/12/insurance-companies.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

header {
	display: block;
	height: 80px;
	font-family: 'Krona One', sans-serif;
	border-radius: 2mm;
	opacity: 0.9;
	background-color: gray;
}

header nav, a, h3 {
	color: black;
	text-decoration: none;
	position: relative;
	font-weight: bolder;
}

header h3 {
	top: 35%;
	left: 35% color:black;
}

header a {
	top: 35%;
	left: 80% color:black;
	padding-right: 10px;
	padding-left: 10px;
}

a:hover {
	background-color: #00ff00;
}

<
div {
	background-color: gray;
	font-weight: bolder;
	opacity: 0.75;
}
</style>

</head>
<body>
	<header>
		<nav>
			<h3>
				Welcome <strong>${userId}</strong>
			</h3>
			<a href="${pageContext.request.contextPath}/enroll">Enroll</a> <a
				href="${pageContext.request.contextPath}/Logout">Logout</a> <a
				href="${pageContext.request.contextPath}/viewlist">View Info</a>
		</nav>
	</header>

	<div align="left">
		<form action="${pageContext.request.contextPath}/getcriteria"
			method="post">
			<table>
				<tr>
					<td>Select Criteria</td>
				</tr>

				<tr>
					<td>PolicyName</td>
					<td><input type="radio" name="criteria" value="policyName"></td>
				</tr>

				<tr>
					<td>PolicyType</td>
					<td><input type="radio" name="criteria" value="policyType"></td>
				</tr>

				<tr>
					<td>PolicyProvider</td>
					<td><input type="radio" name="criteria" value="policyProvider"></td>
				</tr>

				<tr>
					<td>PolicyDuration</td>
					<td><input type="radio" name="criteria" value="policyDuration"></td>
				</tr>

				<tr>
					<td>PolicyAmount</td>
					<td><input type="radio" name="criteria" value="policyAmount"></td>
				</tr>

				<tr>
					<td>Enter Criteria</td>
					<td><input type="text" name="text"></td>
				</tr>
				<tr>
					<td><input type="submit" name="Search"></td>
				</tr>

			</table>
		</form>

		<h3>List of Policies Available</h3>
		<c:forEach var="list" items="${data}">
			<table border='1'>
				<tr>
					<td>PolicyId</td>
					<td>PolicyName</td>
					<td>PolicyType</td>
					<td>PolicyProvider</td>
					<td>PolicyDuration</td>
					<td>PolicyDueDate</td>
					<td>PolicyAmount</td>
				</tr>
				<tr>
					<td>${list.policyId}</td>
					<td>${list.policyName}</td>
					<td>${list.policyType}</td>
					<td>${list.policyProvider}</td>
					<td>${list.policyDuration}</td>
					<td>${list.policyDueDate}</td>
					<td>${list.policyAmount}</td>
				</tr>
			</table>
		</c:forEach>
	</div>
</body>
</html>