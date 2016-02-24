package com.adb.survey.DAO;

import java.io.Serializable;
import java.util.List;

import com.adb.survey.Entity.Question;
import com.adb.survey.Entity.Survey;

public interface QuestionDAO {
	public Serializable createQuestion(Question question);
}
