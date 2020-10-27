<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Policy</title>
<style type="text/css">
body {
	background-color: aqua;
}
</style>
</head>
<body>
	<form action="./editpolicy" method="POST">
		<div align="center">
			<table>
				<tr>
					<td>Policy Id</td>
					<td><input type="text" name="policyId"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" name="Edit" /></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>