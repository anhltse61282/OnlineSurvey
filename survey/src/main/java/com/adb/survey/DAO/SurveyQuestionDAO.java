package com.adb.survey.DAO;

import java.io.Serializable;
import java.util.List;

import com.adb.survey.Entity.SurveyQuestion;

public interface SurveyQuestionDAO {
	public List<SurveyQuestion> getQuestion(int surveyID);
	public Serializable createSurveyQuestion(SurveyQuestion surveyQuestion);
}
