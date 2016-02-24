package com.adb.survey.service;

import java.io.Serializable;
import java.util.List;

import com.adb.survey.Entity.SurveyQuestion;

public interface SurveyQuestionService {
	public List<SurveyQuestion> getQuestion(int surveyID);
	public Serializable createSurveyQuestion(SurveyQuestion surveyQuestion);

}
