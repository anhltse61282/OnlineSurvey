package com.adb.survey.DAO;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.adb.survey.Entity.SurveyOption;
import com.adb.survey.Util.HibernateUtil;
@Repository
public class OptionDAOImpl implements OptionDAO{
	@Autowired
	private HibernateUtil hibernateUtil;
	@Override
	public Serializable createOption(SurveyOption option) {
		// TODO Auto-generated method stub
		return hibernateUtil.create(option);
	}

}
