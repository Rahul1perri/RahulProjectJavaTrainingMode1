<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Registeration Form</title>

<style type="text/css">
<
body {
	background-image:
		url("https://d3n8a8pro7vhmx.cloudfront.net/votesustainable/pages/39/attachments/original/1504573829/Policy_Icon_Orange.jpg?1504573829");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}
</style>


</head>
<body>
	<form action="./vendorregister" method="POST">
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
					<td>Vendor ID</td>
					<td><input type="text" name="vendorId" required /></td>
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
		</div>
	</form>
	<div style="color: red">${error}</div>
</body>
</html>