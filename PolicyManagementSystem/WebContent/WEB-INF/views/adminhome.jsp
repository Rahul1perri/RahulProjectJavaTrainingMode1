<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UIR AdminHome</title>
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
	opacity: 0.75;
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
</style>




</head>
<body>
	<header>
		<nav>
			<h3>
				Welcome <strong>${userId}</strong>
			</h3>
			<a href="./policyregisteration">Create</a> <a href="./editedpolicy">Edit</a>
			<a href="./logout">Logout</a>

		</nav>
	</header>




</body>
</html>