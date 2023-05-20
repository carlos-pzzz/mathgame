package github.c4pzz.mathgame.models;

public class Player {

	private String nickname;
	private int score;

	public Player() {
		this.score = 0;
		this.nickname = "Player";
	}
	
	public Player(String nickname) {
		this.score = 0;
		this.nickname = nickname;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public void increaseScore() {
		this.score += 1;
	}

}
