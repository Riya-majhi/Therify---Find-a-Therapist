package com.majorproject.java.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AdminBean {
	@Id
	private String adminEmail;
	private String password;
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public AdminBean(Long id, String adminEmail, String password) {
		super();
		
		this.adminEmail = adminEmail;
		this.password = password;
	}
	public AdminBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "AdminBean [ adminEmail=" + adminEmail + ", password=" + password + "]";
	}
	
}
