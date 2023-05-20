<%@page import="github.c4pzz.mathgame.models.Ranking"%>
<%@page import="github.c4pzz.mathgame.models.Question"%>
<%@page import="github.c4pzz.mathgame.models.Player"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
Player p = (Player) session.getAttribute("player");
Question q = (Question) session.getAttribute("question");
int resp = request.getParameter("answer").isEmpty() ? 0 : Integer.parseInt(request.getParameter("answer"));

boolean won = q.calcResult() == resp;

if (won) { p.increaseScore(); }
%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/result_style.css">
	<link rel="stylesheet" href="styles/general_style.css">
	<title>MathGame - Result</title>
</head>

<body>
    <% if (won) { %>

	    <div class="result-container">
	        <img src="media/icon-correct.svg" alt="Correct icon">
	        <h1 class="title">Nice!</h1> <br>
	        <span class="subtitle">Score: <%=p.getScore()%></span> <br> <br> <br>
	        <a href="game.jsp"> Next ></a>
	    </div>

    <%
	}
	else
	{
		Ranking.registrar(p, q.getDifficulty());
	%>

	    <div class="result-container">
	        <img src="media/icon-incorrect.svg" alt="Incorrect icon">
	        <h1 class="title">So close, the answer was <%=q.calcResult()%></h1> <br>
	        <span class="subtitle">Final score: <%=p.getScore()%></span> <br> <br> <br>
	        <a href="index.jsp">Game over...</a>
	    </div>

    <%
	}
	%>
</body>

</html>