package com.adb.survey.Entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name="survey",catalog="onlinesurveysystem")
public class Survey implements Serializable{
	@Id
	@GeneratedValue
	@Column(name="ID")
	private int ID;
	@Column(name="CreatingUserID")
	private int creatingUserID;
	@Column(name="Name")
	private String name;
	@Column(name="Description")
	private String description;
	@Column(name="LogoUrl")
	private String logoURl;
	@Column(name="TotalOfferedPoints")
	private int totalPoint;
	@Column(name="CreateDate")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createDate;
	public Survey() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Survey( int creatingUserID, String name, String description, String logoURl, int totalPoint,
			Date createDate) {
		super();
		this.creatingUserID = creatingUserID;
		this.name = name;
		this.description = description;
		this.logoURl = logoURl;
		this.totalPoint = totalPoint;
		this.createDate = createDate;
	}
	public int getCreatingUserID() {
		return creatingUserID;
	}
	public void setCreatingUserID(int creatingUserID) {
		this.creatingUserID = creatingUserID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLogoURl() {
		return logoURl;
	}
	public void setLogoURl(String logoURl) {
		this.logoURl = logoURl;
	}
	public int getTotalPoint() {
		return totalPoint;
	}
	public void setTotalPoint(int totalPoint) {
		this.totalPoint = totalPoint;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public int getID() {
		return ID;
	}
}
