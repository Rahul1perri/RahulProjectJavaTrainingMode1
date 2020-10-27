<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enrollment Page</title>
<style type="text/css">
table {
	text-align: center;
}

body {
	background-color: aqua;
}
</style>


</head>
<body>

	<h3>List of Policies Available</h3>
	<c:forEach var="list" items="${policyList}">
		<table border='1'>
			<tr>
				<td>PolicyId</td>
				<td>PolicyName</td>
				<td>PolicyType</td>
				<td>PolicyProvider</td>
				<td>PolicyDuration</td>
				<td>PolicyDueDate</td>
				<td>PolicyAmount</td>
				<td>Enroll Now</td>
				<td>Pay Now</td>
			</tr>
			<tr>
				<td>${list.policyId}</td>
				<td>${list.policyName}</td>
				<td>${list.policyType}</td>
				<td>${list.policyProvider}</td>
				<td>${list.policyDuration}</td>
				<td>${list.policyDueDate}</td>
				<td>${list.policyAmount}</td>
				<td><a
					href="${pageContext.request.contextPath}/enrolling/${list.policyId}">Enroll
						Now</a></td>
				<td><a
					href="${pageContext.request.contextPath}/payment/${list.policyId}">Pay
						Now</a></td>
			</tr>
			<br>
			<br>
		</table>


	</c:forEach>
	<br>
	<br>

	<a href="./homereload">User Admin</a>
</body>
</html>