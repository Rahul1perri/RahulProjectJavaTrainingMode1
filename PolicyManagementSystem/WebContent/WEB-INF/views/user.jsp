<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UIR User</title>

<style>
#user_div {
	text-align: center;
}

body {
	background-image:
		url("http://www.christtheking.notts.sch.uk/wp-content/uploads/2018/07/Policy-copy.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	opacity: 0.95;
}

a {
	color: #0000ff;
	font-weight: bolder;
}

#user_login {
	font-weight: bolder;
	font-family: 'Krona One', sans-serif;
	font-weight: bolder;
}
</style>
</head>
<body>
	<div id=user_div>
		<form action="./usersubmitForm" method="POST">
			<div align="center">
				<table>
					<tr>
						<td>UserId</td>
						<td><input type="text" name="userId" required /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="password" required /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Submit" /></td>
					</tr>
				</table>
				<div style="color: red">${error}</div>
			</div>
		</form>
		<p>
			<strong>Haven't yet registered?</strong><a href="./userregisteration">Click
				Here</a> <strong>to register now....!!!</strong>
		</p>
		<a Style="text-align: left; font-weight: bolder; font-size: large;"
			href="http://localhost:8080/PolicyManagementSystem/">Home</a>
	</div>

</body>
</html>