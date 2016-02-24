package com.adb.survey.service;

import java.io.Serializable;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adb.survey.DAO.OptionDAO;
import com.adb.survey.Entity.SurveyOption;
@Service
@Transactional
public class SurveyOptionServiceImple implements SurveyOptionService{
	@Autowired
	private OptionDAO optionDAO;
	@Override
	public Serializable createOption(SurveyOption option) {
		// TODO Auto-generated method stub
		return optionDAO.createOption(option);
	}

}
