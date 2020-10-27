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
			<label for="criteria">Choose a Criteria:</label>
<select id="criteria" name="criteria">
  <option value="policyName">policyName</option>
  <option value="policyType">policyType</option>
  <option value="policyProvider">policyProvider</option>
</select>
<input type="text" name="text"  >
<input type="submit" value="Search">
		</form>

		<h3>List of Policies Available</h3>
		<c:forEach var="list" items="${object}">
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
