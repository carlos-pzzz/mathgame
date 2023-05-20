<%@page import="github.c4pzz.mathgame.models.Question"%>
<%@page import="github.c4pzz.mathgame.models.Player"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
Player p = new Player();
Question q = new Question();

if ((boolean) session.getAttribute("isPlaying") == true)
{
	p = (Player) session.getAttribute("player");
	q = (Question) session.getAttribute("question");
}
else
{
	session.setAttribute("isPlaying", true);

	String nickname = request.getParameter("input-nickname");
	int difficulty = Integer.parseInt(request.getParameter("select-difficulties"));

	p.setNickname(nickname);
	q.setDifficulty(difficulty);
}

q.generateNumbers();
q.generateOperations();

session.setAttribute("player", p);
session.setAttribute("question", q);
%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/general_style.css">
	<link rel="stylesheet" href="styles/game_style.css">
	<title>MathGame - Gaming...</title>
</head>

<body>
	<div id="game-container">
		<h1><%=p.getNickname()%>, How much is?</h1>
		<div id="game-values">
			<span><%=q.getNumber1()%></span>
			<span><%=q.getOperationSimbol()%></span>
			<span><%=q.getNumber2()%></span>
		</div>

		<div id="answer-container">
			<form action="result.jsp" method="POST">
				<input type="text" id="answer" name="answer">
				<input type="submit" value="Submit">
			</form>
		</div>
	</div>
</body>

</html>