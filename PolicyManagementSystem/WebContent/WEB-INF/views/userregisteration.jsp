<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registeration Form</title>
<style type="text/css">
<
body {
	background-image:
		url("https://www.gdnonline.com/gdnimages/20190822/20190822203206policy.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	background-color: aqua;
}
</style>
</head>
<body>
	<form action="./userregister" method="POST">
		<div align="center">
			<table>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstName" required /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastName" required /></td>
				</tr>
				<tr>
					<td>Age</td>
					<td><input type="text" name="age" required /></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><input type="text" name="gender" required /></td>
				</tr>
				<tr>
					<td>Contact Number</td>
					<td><input type="text" name="contactNo" required /></td>
				</tr>
				<tr>
					<td>User ID</td>
					<td><input type="text" name="userId" required /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" required /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" name="Submit" /></td>
				</tr>
			</table>
			<div style="color: red">${error}</div>
		</div>
	</form>

</body>
</html>