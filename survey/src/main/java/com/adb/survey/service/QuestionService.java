package com.adb.survey.service;

import java.io.Serializable;

import com.adb.survey.Entity.Question;

public interface QuestionService {
	public Serializable createQuestion(Question question);

}
