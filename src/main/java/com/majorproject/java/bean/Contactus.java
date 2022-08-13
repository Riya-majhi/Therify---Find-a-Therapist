
package com.majorproject.java.bean;

	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;
	import javax.persistence.Table;

	@Entity
	@Table(name="Contact")
	public class Contactus {
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int id;
		private String firstname;
		private String lastname;
		private String subject;
		private String email;
		private String massege;
		public String getFirstname() {
			return firstname;
		}
		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}
		public String getLastname() {
			return lastname;
		}
		public Contactus() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Contactus(String firstname, String lastname, String subject, String email, String massege) {
			super();
			this.firstname = firstname;
			this.lastname = lastname;
			this.subject = subject;
			this.email = email;
			this.massege = massege;
		}
		public void setLastname(String lastname) {
			this.lastname = lastname;
		}
		public String getSubject() {
			return subject;
		}
		public void setSubject(String subject) {
			this.subject = subject;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getMassege() {
			return massege;
		}
		public void setMassege(String massege) {
			this.massege = massege;
		}
	 
	}


