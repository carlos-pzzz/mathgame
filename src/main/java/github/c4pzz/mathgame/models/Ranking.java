package github.c4pzz.mathgame.models;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Ranking {

	public static List<Player> rankingEasy = new ArrayList<>();
	public static List<Player> rankingMedium = new ArrayList<>();
	public static List<Player> rankingHard = new ArrayList<>();
	public static List<Player> rankingImpossible = new ArrayList<>();

	public static void registrar(Player p, int d) {
		if (d == 1)
		{
			saveInRanking(rankingEasy, p);
		}
		else if (d == 2)
		{
			saveInRanking(rankingMedium, p);
		}
		else if (d == 3)
		{
			saveInRanking(rankingHard, p);
		}
		else
		{
			saveInRanking(rankingImpossible, p);
		}
	}

	private static void saveInRanking(List<Player> players, Player p) {
		for (Player player : players)
		{
			if (p.getNickname().equalsIgnoreCase(player.getNickname()))
			{
				player.setScore(p.getScore() > player.getScore() ? p.getScore() : player.getScore());
				return;
			}
		}
		players.add(p);
	}

	public static List<Player> getMelhores(int difficulty) {
		if (difficulty == 1)
		{
			Collections.sort(Ranking.rankingEasy, (o1, o2) -> o2.getScore() - o1.getScore());
			return Ranking.rankingEasy;
		}
		else if (difficulty == 2)
		{
			Collections.sort(Ranking.rankingMedium, (o1, o2) -> o2.getScore() - o1.getScore());
			return Ranking.rankingMedium;
		}
		else if (difficulty == 3)
		{
			Collections.sort(Ranking.rankingHard, (o1, o2) -> o2.getScore() - o1.getScore());
			return Ranking.rankingHard;
		}
		else
		{
			Collections.sort(Ranking.rankingImpossible, (o1, o2) -> o2.getScore() - o1.getScore());
			return Ranking.rankingImpossible;
		}
	}
}
