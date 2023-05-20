<%@page import="github.c4pzz.mathgame.models.Player"%>
<%@page import="github.c4pzz.mathgame.models.Ranking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="styles/general_style.css">
	<link rel="stylesheet" href="styles/ranking_style.css">
	<title>Ranking</title>
</head>

<body>
	<div>
		<h1 class="title">Impossible ranking</h1>
	</div>
	<table>
		<thead>
			<tr>
				<th>NICKNAME</th>
				<th>BEST SCORE</th>
				<th>DIFFICULTY</th>
			</tr>
		</thead>
		<tbody>
			<%
			if (Ranking.rankingImpossible.size() != 0)
			{
				for (Player p : Ranking.getMelhores(4)) {
					out.print("<tr><td>" + p.getNickname() + "</td><td>" + p.getScore() + "</td><td>Impossible</td></tr>");
				}
			}
			else
			{
			%>
			<tr>
				<td>...</td>
				<td>...</td>
				<td>...</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	
	<br>
	
	<ul id="pagination">
		<li class="page-item"><a href="index.jsp" class="page-link">Home</a></li>
		<li class="page-item"><a href="ranking_easy.jsp" class="page-link">1</a></li>
		<li class="page-item"><a href="ranking_medium.jsp" class="page-link">2</a></li>
		<li class="page-item"><a href="ranking_hard.jsp" class="page-link">3</a></li>
		<li class="page-item"><a href="#" class="page-link" id="page-link-active">4</a></li>
	</ul>
</body>

</html>