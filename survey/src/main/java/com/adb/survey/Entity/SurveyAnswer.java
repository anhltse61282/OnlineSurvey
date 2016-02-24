package com.adb.survey.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="surveyanswer",catalog="onlinesurveysystem")
public class SurveyAnswer {
	@Id
	@GeneratedValue
	@Column(name="ID")
	private int ID;
	@Column(name= "SurveyRecordID")
	private int surveyRecordID;
	@Column(name = "QuestionID")
	private int questionID;
	@Column(name = "QuestionOptionID")
	private int questionOptionID;
	@Column(name = "CustomAnswer")
	private String customAnswer;
	public SurveyAnswer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SurveyAnswer(int iD, int surveyRecordID, int questionID, int questionOptionID, String customAnswer) {
		super();
		ID = iD;
		this.surveyRecordID = surveyRecordID;
		this.questionID = questionID;
		this.questionOptionID = questionOptionID;
		this.customAnswer = customAnswer;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getSurveyRecordID() {
		return surveyRecordID;
	}
	public void setSurveyRecordID(int surveyRecordID) {
		this.surveyRecordID = surveyRecordID;
	}
	public int getQuestionID() {
		return questionID;
	}
	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}
	public int getQuestionOptionID() {
		return questionOptionID;
	}
	public void setQuestionOptionID(int questionOptionID) {
		this.questionOptionID = questionOptionID;
	}
	public String getCustomAnswer() {
		return customAnswer;
	}
	public void setCustomAnswer(String customAnswer) {
		this.customAnswer = customAnswer;
	}
}
