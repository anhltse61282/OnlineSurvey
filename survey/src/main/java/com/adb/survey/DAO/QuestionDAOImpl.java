package com.adb.survey.DAO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.adb.survey.Entity.Question;
import com.adb.survey.Entity.Survey;
import com.adb.survey.Util.HibernateUtil;
@Repository
public class QuestionDAOImpl implements QuestionDAO{
	@Autowired
	HibernateUtil hibernateUtil;
	
	@Override
	public Serializable createQuestion(Question question) {
		// TODO Auto-generated method stub
		return hibernateUtil.create(question);
	}

}
