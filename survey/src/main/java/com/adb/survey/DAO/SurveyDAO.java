package com.adb.survey.DAO;

import java.io.Serializable;
import java.util.List;

import com.adb.survey.Entity.Survey;

public interface SurveyDAO {
	public List<Survey> getAll();
	public Serializable createSurvey(Survey survey);
	public Survey findByID(int surveyID);
	public List<Survey> findbyName(String name);
}
