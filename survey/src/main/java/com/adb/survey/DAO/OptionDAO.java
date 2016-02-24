package com.adb.survey.DAO;

import java.io.Serializable;

import com.adb.survey.Entity.Question;
import com.adb.survey.Entity.SurveyOption;

public interface OptionDAO {
	public Serializable createOption(SurveyOption option);

}
