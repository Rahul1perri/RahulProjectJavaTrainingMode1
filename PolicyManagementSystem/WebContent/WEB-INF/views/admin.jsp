<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="true"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UIR Admin</title>

<style>
#admin_div {
	text-align: center;
}

body {
	background-image:
		url("http://www.christtheking.notts.sch.uk/wp-content/uploads/2018/07/Policy-copy.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

a {
	color: #0000ff;
	font-weight: bolder;
}

#admin_login {
	font-weight: bolder;
	font-family: 'Krona One', sans-serif;
}

#form {
	background-color: gray;
	opacity: 0.75;
	font-weight: bolder;
}
</style>


</head>
<body>
	<div id=admin_div>
		<form action="./adminsubmitForm" method="POST">
			<div id=form align="center">
				<table>
					<tr>
						<td>VendorId</td>
						<td><input type="text" name="vendorId" required /></td>
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

				<p>
					<strong>Haven't yet registered?</strong><a
						href="./adminregisteration">Click Here</a> <strong>to
						register now....!!!</strong>
				</p>
			</div>
		</form>

		<a Style="text-align: left; font-weight: bolder; font-size: large;"
			href="http://localhost:8080/PolicyManagementSystem/">Home</a>
	</div>




</body>
</html>