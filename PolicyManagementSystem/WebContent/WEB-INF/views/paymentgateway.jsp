<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Gateway</title>
<style type="text/css">
h4 {
	color: black;
	font-weight: bolder;
	text-align: center;
}

body {
	background-color: aqua;
}
</style>
</head>
<body>

	<div id=main>

		<h4>The amount to be paid is ${amount} ${fine}</h4>
		<br>

		<form action="${pageContext.request.contextPath}/userpaysuccess"
			method="post">
			<table>
				<tr>
					<td>Select Payment Mode</td>
				</tr>

				<tr>
					<td>Credit Card</td>
					<td><input type="radio" name="criteria"></td>
				</tr>

				<tr>
					<td>Debit Card</td>
					<td><input type="radio" name="criteria"></td>
				</tr>

				<tr>
					<td>Bhim Upi</td>
					<td><input type="radio" name="criteria"></td>
				</tr>

				<tr>
					<td>Paytm</td>
					<td><input type="radio" name="criteria"></td>
				</tr>

				<tr>
					<td>Phone Pay</td>
					<td><input type="radio" name="criteria"></td>
				</tr>

				<tr>
					<td><input type="submit" name="Pay"></td>
				</tr>

			</table>
		</form>




	</div>




</body>
</html>