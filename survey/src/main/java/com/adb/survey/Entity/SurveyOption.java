package com.adb.survey.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "option",catalog="onlinesurveysystem")
public class SurveyOption {
	@Id
	@GeneratedValue
	@Column(name="ID")
	private int ID;
	@Column(name= "QuestionID")
	private int questionID;
	@Column(name = "OptionContent")
	private String optionContent;
	public SurveyOption() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SurveyOption(int iD, int questionID, String optionContent) {
		super();
		ID = iD;
		this.questionID = questionID;
		this.optionContent = optionContent;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getQuestionID() {
		return questionID;
	}
	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}
	public String getOptionContent() {
		return optionContent;
	}
	public void setOptionContent(String optionContent) {
		this.optionContent = optionContent;
	}
}
