package com.majorproject.java.bean;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Appoinment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String docName;
	private int doc_id;
	private long docPhone;
	private String docSpecial;
	private String docCity;
	private String docFee;
	private String docTime1;
	private String patientName;
	private String patientEmail;
	private String patientCity;
	private long patientPhone;
	private String date;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDocName() {
		return docName;
	}
	public void setDocName(String docName) {
		this.docName = docName;
	}
	public long getDocPhone() {
		return docPhone;
	}
	public void setDocPhone(long l) {
		this.docPhone = l;
	}
	public String getDocSpecial() {
		return docSpecial;
	}
	public void setDocSpecial(String docSpecial) {
		this.docSpecial = docSpecial;
	}
	public String getDocCity() {
		return docCity;
	}
	public void setDocCity(String docCity) {
		this.docCity = docCity;
	}
	public String getDocFee() {
		return docFee;
	}
	public void setDocFee(String docFee) {
		this.docFee = docFee;
	}
	public String getDocTime1() {
		return docTime1;
	}
	public void setDocTime1(String docTime1) {
		this.docTime1 = docTime1;
	}
	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	public String getPatientEmail() {
		return patientEmail;
	}
	public void setPatientEmail(String patientEmail) {
		this.patientEmail = patientEmail;
	}
	public String getPatientCity() {
		return patientCity;
	}
	public void setPatientCity(String patientCity) {
		this.patientCity = patientCity;
	}
	public long getPatientPhone() {
		return patientPhone;
	}
	public void setPatientPhone(long patientPhone) {
		this.patientPhone = patientPhone;
	}
	public Appoinment(int id, String docName, long docPhone,int doc_id, String docSpecial, String docCity, String[] docDay,
			String docFee, String docTime1, String patientName, String patientEmail, String patientCity,
			long patientPhone) {
		super();
		this.id = id;
		this.doc_id=doc_id;
		this.docName = docName;
		this.docPhone = docPhone;
		this.docSpecial = docSpecial;
		this.docCity = docCity;
		this.docFee = docFee;
		this.docTime1 = docTime1;
		this.patientName = patientName;
		this.patientEmail = patientEmail;
		this.patientCity = patientCity;
		this.patientPhone = patientPhone;
	}
	@Override
	public String toString() {
		return "Appoinment [id=" + id + ", docName=" + docName + ", docPhone=" + docPhone + ", docSpecial=" + docSpecial
				+ ", docCity=" + docCity +  ", docFee=" + docFee + ", docTime1="
				+ docTime1 + ", patientName=" + patientName + ", patientEmail=" + patientEmail + ", patientCity="
				+ patientCity + ", patientPhone=" + patientPhone + ", date=" + date + "]";
	}
	public Appoinment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}
	
	
	

}
