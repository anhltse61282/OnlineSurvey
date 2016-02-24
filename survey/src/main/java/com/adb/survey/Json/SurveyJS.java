package com.adb.survey.Json;

public class SurveyJS {
	private String surveyName;
	private String surveyDescription;
	private String imageUrl;
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public SurveyJS() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SurveyJS(String surveyName, String surveyDescription,String imageURl) {
		super();
		this.surveyName = surveyName;
		this.surveyDescription = surveyDescription;
		this.imageUrl=imageURl;
	}
	public String getSurveyName() {
		return surveyName;
	}
	public void setSurveyName(String surveyName) {
		this.surveyName = surveyName;
	}
	public String getSurveyDescription() {
		return surveyDescription;
	}
	public void setSurveyDescription(String surveyDescription) {
		this.surveyDescription = surveyDescription;
	}
}
