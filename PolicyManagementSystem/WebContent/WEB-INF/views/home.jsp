<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UIR Home</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css"
	type="text/css" />
<style>
body {
	background-color: #a1eafb;
}

header {
	display: block;
	height: 80px;
	font-family: 'Krona One', sans-serif;
	background-color: #0080ff;
	border-radius: 2mm;
}

header h2 {
	color: black;
	text-decoration: none;
	position: relative;
	font-weight: bolder;
	top: 35%;
}

header nav {
	color: black;
	text-decoration: none;
	position: relative;
	font-weight: bolder;
	top: -20%;
	left: 80%
}

header a {
	color: black;
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
		<h2>UIR Policies Corporation Limited</h2>
		<nav>
			<a href="./admin">Admin</a> <a href="./user">User</a>
		</nav>
	</header>
	<div
		style="position: relative; width: 100%; height: 100%; padding-top: 100.0000%; padding-bottom: 48px; box-shadow: 0 2px 8px 0 rgba(63, 69, 81, 0.16); margin-top: 0.1em; margin-bottom: 0.9em; overflow: hidden; border-radius: 8px; will-change: transform;">
		<iframe
			style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0;"
			src="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAELcz5Io7I&#x2F;view?embed">
		</iframe>
	</div>
</body>
</html>