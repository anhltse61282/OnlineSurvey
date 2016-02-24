package com.adb.survey.service;

import java.io.Serializable;
import java.util.List;

import com.adb.survey.Entity.Survey;

public interface SurveyService {
	public List<Survey> getAll();
	public Serializable createSurvey(Survey survey);
	public Survey findByID(int surveyID);
	public List<Survey> findbyName(String name);
}
