package com.adb.survey.service;

import java.io.Serializable;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adb.survey.DAO.QuestionDAO;
import com.adb.survey.Entity.Question;
@Service
@Transactional
public class QuestionServiceImpl implements QuestionService{
	@Autowired
	QuestionDAO questionDao;
	@Override
	public Serializable createQuestion(Question question) {
		// TODO Auto-generated method stub
		return questionDao.createQuestion(question);
	}

}
