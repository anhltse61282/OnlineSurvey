package com.adb.survey.service;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adb.survey.DAO.SurveyDAO;
import com.adb.survey.Entity.Survey;
@Service
@Transactional
public class SurveyServiceImpl implements SurveyService{
	@Autowired
	private SurveyDAO surveyDao;
	@Override
	public List<Survey> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable createSurvey(Survey survey) {
		// TODO Auto-generated method stub
		return surveyDao.createSurvey(survey);
	}

	@Override
	public Survey findByID(int surveyID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Survey> findbyName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
