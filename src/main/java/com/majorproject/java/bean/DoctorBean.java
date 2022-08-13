package com.majorproject.java.bean;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="DoctorBean")
public class DoctorBean {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String userName;
	private long userMobile;
	private int userGender;
	private String userSpecial;
	private int userExperience;
	private String userCity;
	private String[] userDay;
	private String userFee;
	private String userFile;
	private String userTime1;
	private String userTime2;
	
	
	public int getUserExperience() {
		return userExperience;
	}

	public void setUserExperience(int userExperience) {
		this.userExperience = userExperience;
	}

	public void setId(int id) {
		this.id = id;
	}



	public String getUserFile() {
		return userFile;
	}

	public void setUserFile(String userFile) {
		this.userFile = userFile;
	}

	public int getId() {
		return id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public long getUserMobile() {
		return userMobile;
	}

	public void setUserMobile(long userMobile) {
		this.userMobile = userMobile;
	}

	public int getUserGender() {
		return userGender;
	}

	public void setUserGender(int userGender) {
		this.userGender = userGender;
	}

	public String getUserSpecial() {
		return userSpecial;
	}

	public void setUserSpecial(String userSpecial) {
		this.userSpecial = userSpecial;
	}

	public String getUserCity() {
		return userCity;
	}

	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}

	public String[] getUserDay() {
		return userDay;
	}

	public void setUserDay(String[] userDay) {
		this.userDay = userDay;
	}

	public String getUserFee() {
		return userFee;
	}

	public void setUserFee(String userFee) {
		this.userFee = userFee;
	}

	public String getUserTime1() {
		return userTime1;
	}

	public void setUserTime1(String userTime1) {
		this.userTime1 = userTime1;
	}

	public String getUserTime2() {
		return userTime2;
	}

	public void setUserTime2(String userTime2) {
		this.userTime2 = userTime2;
	}

	@Override
	public String toString() {
		return "DoctorBean [id=" + id + ", userName=" + userName + ", userMobile=" + userMobile + ", userGender="
				+ userGender + ", userSpecial=" + userSpecial + ", userCity=" + userCity + ", userDay="
				+ Arrays.toString(userDay) + ", userFee=" + userFee + ", userTime1=" + userTime1 + ", userTime2="
				+ userTime2 + "]";
	}
	

	
	
	

}
