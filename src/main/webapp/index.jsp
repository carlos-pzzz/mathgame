<%@page import="github.c4pzz.mathgame.models.Player"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<% session.setAttribute("isPlaying", false); %>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/index_style.css">
	<link rel="stylesheet" href="styles/general_style.css">
	<title>MathGame</title>
</head>

<body>
	<div id="home-container">
		<div id="logo-container">
			<img src="media/icon-logo.svg" alt="game_logo">
			<h1 class="title">MathGame!</h1>
		</div>

		<div id="form-container">
			<form action="game.jsp" method="POST">
				<div id="nickname-container">
					<label for="input-nickname">Nickname:</label> <br>
					<input type="text" id="input-nickname" name="input-nickname" maxlength="6" placeholder="Player" required>
				</div>

				<div id="difficulties-container">
					<label for="select-difficulties">Difficulty:</label> <br>
					<select id="select-difficulties" name="select-difficulties" required>
						<option value="1">Easy</option>
						<option value="2" selected>Medium</option>
						<option value="3">Hard</option>
						<option value="4">Impossible</option>
					</select>
				</div>

				<input type="submit" id="input-start" name="input-start" value="Start">
				<a href="ranking_medium.jsp">Ranking</a>
			</form>
		</div>
	</div>
</body>

</html>