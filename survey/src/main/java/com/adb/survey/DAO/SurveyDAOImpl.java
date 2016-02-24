package com.adb.survey.DAO;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.adb.survey.Entity.Survey;
import com.adb.survey.Util.HibernateUtil;
@Repository
public class SurveyDAOImpl implements SurveyDAO{
	@Autowired
	private HibernateUtil hibernateUtil;
	@Override
	public List<Survey> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable createSurvey(Survey survey) {
		// TODO Auto-generated method stub
		return hibernateUtil.create(survey);
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
