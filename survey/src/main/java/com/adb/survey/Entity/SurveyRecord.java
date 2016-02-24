package com.adb.survey.Entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "surveyrecord",catalog="onlinesurveysystem")
public class SurveyRecord {
	@Id
	@GeneratedValue
	@Column(name = "ID")
	private int ID;
	@Column(name = "UserID")
	private int userID;
	@Column(name = "SurveyID")
	private int surveyID;
	@Column(name = "ObtainedPoints")
	private int obtainedPoint;
	@Column(name = "RecordDate")
	private Date recordedDate;
	@Column(name = "Status")
	private int status;
	public SurveyRecord() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SurveyRecord(int iD, int userID, int surveyID, int obtainedPoint, Date recordedDate, int status) {
		super();
		ID = iD;
		this.userID = userID;
		this.surveyID = surveyID;
		this.obtainedPoint = obtainedPoint;
		this.recordedDate = recordedDate;
		this.status = status;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getSurveyID() {
		return surveyID;
	}
	public void setSurveyID(int surveyID) {
		this.surveyID = surveyID;
	}
	public int getObtainedPoint() {
		return obtainedPoint;
	}
	public void setObtainedPoint(int obtainedPoint) {
		this.obtainedPoint = obtainedPoint;
	}
	public Date getRecordedDate() {
		return recordedDate;
	}
	public void setRecordedDate(Date recordedDate) {
		this.recordedDate = recordedDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

}
