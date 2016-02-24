package com.adb.survey.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="surveyquestion",catalog="onlinesurveysystem")
public class SurveyQuestion {
	@Id
	@GeneratedValue
	@Column(name="ID")
	private int ID;
	@Column(name ="SurveyID")
	private int surveyID;
	@Column(name="QuestionID")
	private int questionID;
	public SurveyQuestion() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SurveyQuestion(int iD, int surveyID, int questionID, boolean isMandatory) {
		super();
		ID = iD;
		this.surveyID = surveyID;
		this.questionID = questionID;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getSurveyID() {
		return surveyID;
	}
	public void setSurveyID(int surveyID) {
		this.surveyID = surveyID;
	}
	public int getQuestionID() {
		return questionID;
	}
	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}
	
}
