package com.adb.survey.controller;

import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.adb.survey.Entity.Question;
import com.adb.survey.Entity.Survey;
import com.adb.survey.Entity.SurveyOption;
import com.adb.survey.Entity.SurveyQuestion;
import com.adb.survey.Json.QuestionJS;
import com.adb.survey.Json.SurveyJS;
import com.adb.survey.service.QuestionService;
import com.adb.survey.service.SurveyOptionService;
import com.adb.survey.service.SurveyQuestionService;
import com.adb.survey.service.SurveyService;

@Controller
public class HomeController {
	@Autowired
	private SurveyService surveyService;
	@Autowired
	private QuestionService questionService;
	@Autowired
	private SurveyQuestionService SurveyQuestionService;
	@Autowired
	private SurveyOptionService SurveyoptionService;
	int surveyID;
	int questionID;
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String home() {
		return "home";
	}
	@RequestMapping(value="/newsurvey",method=RequestMethod.GET)
	public String newsurvey() {
		return "newsurvey";
	}
	@RequestMapping(value = "/createnewSurvey",method = RequestMethod.POST)
	public @ResponseBody Survey createNewSurvey(@RequestBody SurveyJS survey) {
		
			System.out.println(survey.getSurveyName());
			System.out.println(survey.getSurveyDescription());
			System.out.println(survey.getImageUrl());
			Survey surveyObj = new Survey();
			surveyObj.setName(survey.getSurveyName());
			surveyObj.setDescription(survey.getSurveyDescription());
			surveyObj.setLogoURl(survey.getImageUrl());
			surveyObj.setCreatingUserID(1);
			surveyObj.setTotalPoint(100);
			Date date = new Date();
			surveyObj.setCreateDate(date);		
			System.out.println(surveyObj.getCreateDate());
			surveyService.createSurvey(surveyObj);
			System.out.println("aaaaa");
			System.out.println(surveyObj.getID());
			surveyID=surveyObj.getID();
		return surveyObj;
	}
	@RequestMapping(value = "/createnewSurveyQuestion",method = RequestMethod.POST)
	public @ResponseBody String createnewSurveyQuestion(@RequestBody List<QuestionJS> question) {

		for (QuestionJS questionJS : question) {
			System.out.println(questionJS.getQuestion());
			System.out.println(questionJS.getAnswer());
			Question newQuestion = new Question();
			SurveyQuestion surveyQuestion = new SurveyQuestion();

			newQuestion.setQuestionContent(questionJS.getQuestion());
			newQuestion.setMemberID(1);
			newQuestion.setOfferedPoint(10);
			newQuestion.setType(0);
			newQuestion.setAllowCustom(0);
			questionService.createQuestion(newQuestion);
			questionID = newQuestion.getID();
			StringTokenizer stk = new StringTokenizer(questionJS.getAnswer(), "-");
			while (stk.hasMoreElements()) {
				String answer = (String) stk.nextElement();
				System.out.println(answer);
				SurveyOption option = new SurveyOption();
				option.setOptionContent(answer);
				option.setQuestionID(questionID);
				SurveyoptionService.createOption(option);
			}
			surveyQuestion.setQuestionID(questionID);
			surveyQuestion.setSurveyID(surveyID);
			System.out.println(surveyID);
			SurveyQuestionService.createSurveyQuestion(surveyQuestion);
		}
		return null;
	}
}
