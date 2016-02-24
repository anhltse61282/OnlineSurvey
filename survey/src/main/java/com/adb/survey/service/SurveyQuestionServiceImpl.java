package com.adb.survey.service;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adb.survey.DAO.SurveyQuestionDAO;
import com.adb.survey.Entity.SurveyQuestion;
@Service
@Transactional
public class SurveyQuestionServiceImpl implements SurveyQuestionService{
	@Autowired
	private SurveyQuestionDAO surveyQuestionDAO;
	@Override
	public List<SurveyQuestion> getQuestion(int surveyID) {
		// TODO Auto-generated method stub
		return surveyQuestionDAO.getQuestion(surveyID);
	}
	@Override
	public Serializable createSurveyQuestion(SurveyQuestion surveyQuestion) {
		// TODO Auto-generated method stub
		return surveyQuestionDAO.createSurveyQuestion(surveyQuestion);
	}

}
