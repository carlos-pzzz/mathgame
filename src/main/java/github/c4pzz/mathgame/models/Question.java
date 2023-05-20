package github.c4pzz.mathgame.models;

import java.util.Random;

public class Question {

	private int difficulty;
	private int number1;
	private int number2;
	private int operation;
	private char operationSimbol;

	public Question() {
	}

	public Question(int difficulty) {
		this.difficulty = difficulty;
	}

	public int getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(int difficulty) {
		this.difficulty = difficulty;
	}

	public int getNumber1() {
		return number1;
	}

	public void setNumber1(int number1) {
		this.number1 = number1;
	}

	public int getNumber2() {
		return number2;
	}

	public void setNumber2(int number2) {
		this.number2 = number2;
	}

	public int getOperation() {
		return operation;
	}

	public void setOperation(int operation) {
		this.operation = operation;
	}

	public char getOperationSimbol() {
		return operationSimbol;
	}

	public void setOperationSimbol(char operationSimbol) {
		this.operationSimbol = operationSimbol;
	}

	public void generateOperations() {
		switch (this.difficulty) {
		case 1:
			this.operation = new Random().nextInt(1, 3);
			break;

		case 2:
			this.operation = new Random().nextInt(1, 4);
			break;

		case 3:
			this.operation = new Random().nextInt(1, 5);
			break;

		default:
			this.operation = new Random().nextInt(1, 6);
		}

		switch (this.operation) {
		case 1:
			this.operationSimbol = '+';
			break;

		case 2:
			this.operationSimbol = '-';
			break;

		case 3:
			this.operationSimbol = 'x';
			break;

		case 4:
			this.operationSimbol = '/';
			break;

		default:
			operationSimbol = '^';
		}

	}

	public void generateNumbers() {
		switch (this.difficulty) {
		case 1:
			generate(1, 50, 1, 25);
			break;

		case 2:
			generate(25, 75, 25, 50);
			break;

		case 3:
			generate(50, 100, 50, 75);
			break;

		default:
			generate(1, 1000, 75, 100);
		}
	}

	private void generate(int min, int max, int min2, int max2) {
		number1 = new Random().nextInt(min, max);
		number2 = new Random().nextInt(min2, max2);
	}

	public int calcResult() {
		int result = 0;

		switch (this.operation) {
		case 1:
			result = this.number1 + this.number2;
			break;

		case 2:
			result = this.number1 - this.number2;
			break;

		case 3:
			result = this.number1 * this.number2;
			break;

		case 4:
			result = this.number1 / this.number2;
			break;

		default:
			Math.pow(this.number1, this.number2);
		}

		return result;
	}

}
