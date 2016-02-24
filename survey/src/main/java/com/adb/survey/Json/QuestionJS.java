package com.adb.survey.Json;

public class QuestionJS {
	private String question;
	private String answer;
	public QuestionJS() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QuestionJS(String question, String answer) {
		super();
		this.question = question;
		this.answer = answer;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
