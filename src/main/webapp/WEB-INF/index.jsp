<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Omikuji</title>
	<link rel="stylesheet" type="text/css" href="/css/index.css">
</head>
<body>
	<div>
		<h1>Here's Your Omikuji!</h1>
		<p>
			In ${form.num} years, you will live in ${form.city} with ${form.name} as your roommate,
			${form.hobby} for a living. The next time you see a ${form.thing}, you will have good luck.
			Also, ${form.message}.
		</p>
		<a href="/omikuji">Go Back</a>
	</div>
</body>
</html>