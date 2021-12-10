<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Form</title>
	<link rel="stylesheet" type="text/css" href="/css/form.css">
</head>
<body>
	<div>
		<h1>Send an Omikuji!</h1>
		<form action="/omikuji/process" method="post">
			<div>
				<label>Pick any number from 5 to 25</label>
				<input type="number" min=5 max=25 name="num" />
			</div>
			<div>
				<label>Enter the name of any city:</label>
				<input type="text" name="city"/>
			</div>
			<div>
				<label>Enter the name of any real person:</label>
				<input type="text" name="name"/>
			</div>
			<div>
				<label>Enter professional endeavor or hobby:</label>
				<input type="text" name="hobby"/>
			</div>
			<div>
				<label>Enter any type of living thing:</label>
				<input type="text" name="thing"/>
			</div>
			<div>
				<label>Say something nice to someone:</label>
				<textarea name="message"></textarea>
			</div>
			<p>Send and show a friend</p>
			<input class="submit-button" type="submit" />
		</form>
	</div>
</body>
</html>