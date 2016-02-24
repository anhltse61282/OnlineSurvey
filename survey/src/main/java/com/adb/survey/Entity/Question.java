package com.adb.survey.Entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "question",catalog="onlinesurveysystem")
public class Question implements Serializable{
	@Id
	@GeneratedValue
	@Column(name="ID")
	private int ID;
	@Column(name="MemberID")
	private int memberID;
	@Column(name="QuestionContent")
	private String questionContent;
	@Column (name = "OfferedPoints")
	private int offeredPoint;
	@Column(name="Type")
	private int type;
	@Column(name = "AllowCustomAnswer")
	private int allowCustom;
	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Question(int iD, int memberID, String questionContent, int offeredPoint, int type, int allowCustom) {
		super();
		ID = iD;
		this.memberID = memberID;
		this.questionContent = questionContent;
		this.offeredPoint = offeredPoint;
		this.type = type;
		this.allowCustom = allowCustom;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getMemberID() {
		return memberID;
	}
	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}
	public String getQuestionContent() {
		return questionContent;
	}
	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}
	public int getOfferedPoint() {
		return offeredPoint;
	}
	public void setOfferedPoint(int offeredPoint) {
		this.offeredPoint = offeredPoint;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getAllowCustom() {
		return allowCustom;
	}
	public void setAllowCustom(int allowCustom) {
		this.allowCustom = allowCustom;
	}
}
