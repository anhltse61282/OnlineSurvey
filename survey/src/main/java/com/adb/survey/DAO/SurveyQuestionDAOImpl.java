package com.adb.survey.DAO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.adb.survey.Entity.SurveyQuestion;
import com.adb.survey.Util.HibernateUtil;

import javassist.runtime.Cflow;
@Repository
public class SurveyQuestionDAOImpl implements SurveyQuestionDAO{
	@Autowired
	private HibernateUtil hibernateUtil;
	@Override
	public List<SurveyQuestion> getQuestion(int surveyID) {
		// TODO Auto-generated method stub
		List<SurveyQuestion> allQuestionSurvey=hibernateUtil.fetchAll(SurveyQuestion.class);
		List<SurveyQuestion> result = new ArrayList<SurveyQuestion>();
		for (SurveyQuestion surveyQuestion : allQuestionSurvey) {
			if(surveyQuestion.getSurveyID() == surveyID){
				result.add(surveyQuestion);
			}
		}
		return result;
	}
	@Override
	public Serializable createSurveyQuestion(SurveyQuestion surveyQuestion) {
		// TODO Auto-generated method stub
		return hibernateUtil.create(surveyQuestion);
	}

}
