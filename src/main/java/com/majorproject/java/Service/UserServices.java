
package com.majorproject.java.Service;

import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.majorproject.java.UserRepository.AdminRepo;
import com.majorproject.java.UserRepository.AppoinmentRepo;
import com.majorproject.java.UserRepository.ContactRepo;
import com.majorproject.java.UserRepository.DoctorRepo;
import com.majorproject.java.UserRepository.UserRepo;
import com.majorproject.java.bean.AdminBean;
import com.majorproject.java.bean.Appoinment;
import com.majorproject.java.bean.Contactus;
import com.majorproject.java.bean.DoctorBean;
import com.majorproject.java.bean.UserBean;
import com.mysql.cj.protocol.Message;


@Service
public class UserServices {
//	------------------------------------------------------users-------------------------------------------------------------------
	@Autowired
	private UserRepo userrepo;
	
	public UserBean submitdata(UserBean user)  {
		try {
			return userrepo.save(user);
		}
		catch (Exception e) {
			return null;
		}
	}
	
	public int countUser() {
		try {
			List<UserBean> users=fetchAlluser();
			return users.size();
		}
		catch (Exception e) {
			return 0;
		}
	}
	
	public boolean isExist(String email,String pwd) {
	try {
			UserBean user=userrepo.findById(email).get();
			if(user.getPassword().equals(pwd)) {
				return true;
			}
			return false;
		}
		catch (Exception e) {
			return false;
		}
	}
	
	public UserBean getById(String email){
		try {
			return userrepo.findById(email).get();
		}
		catch (Exception e) {
			return null;
		}
	}
	
	public List<UserBean> fetchAlluser(){
		try {
			
			return userrepo.findAll();
		}
		catch (Exception e) {
			return null;
		}
	}
	
	public void deleteUser(String email) {
		try {
			userrepo.deleteById(email);
		}
		catch (Exception e) {
		}
	}
	
//	---------------------------------------------------------------doctors-----------------------------------------------------------

	@Autowired
	private DoctorRepo docrepo;
	
	public DoctorBean submitdata(DoctorBean doc)  {
		try {
			return docrepo.save(doc);
			
		}
		catch (Exception e) {
			return null;
		}
		
	}
	public int doctorCount() {
		try {
			
			return fetchAllDoctor().size();
		}
		catch (Exception e) {
			return 0;
		}
	}
	
	@SuppressWarnings("deprecation")
	public DoctorBean getById(int id){
		try {
			return docrepo.getOne(id);
			
		}
		catch (Exception e) {
			return null;
		}
	}
	
	public List<DoctorBean> fetchAllDoctor(){
		try {
			return docrepo.findAll();
			
		}
		catch (Exception e) {
			return null;
		}
	}
	
	public void deletedoctor(int id) {
		try {
			docrepo.deleteById(id);
		}
		catch (Exception e) {
		}
	}
	
//	--------------------------------------------------------------Appointment---------------------------------------------------------------
	@Autowired
	public AppoinmentRepo appointRepo;
	
	public Appoinment submitdata(Appoinment appoinment) {
		try {
			return appointRepo.save(appoinment);
			
		}
		catch (Exception e) {
			return null;
		}
		
	}
	public List<Appoinment> getAll(){
		try {
			return appointRepo.findAll();
			
		}
		catch (Exception e) {
			return null;
		}
	}
	
	public int appointmentCount() {
		try {
			return getAll().size();
			
		}
		catch (Exception e) {
			return 0;
		}
	}
	
	public void deleteAppoinment(int id) {
		try {
			appointRepo.deleteById(id);
			
		}
		catch (Exception e) {
		}
	}
//	---------------------------------------------------------------Sending Email---------------------------------------------------------------------------------------------

	public void sendEmail(String to,String subject,String message) {
		// setting host
		String from="aryastark8763@gmail.com";
		Properties prop = new Properties();
		prop.put("mail.smtp.auth", true);
		prop.put("mail.smtp.ssl.enable", true);
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "465");

		
		// get the session
		Session session=Session.getInstance(prop,new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication("aryastark8763@gmail.com", "Office@2022");
			}
			
		});
		session.setDebug(true);
		
		//compose the mail
		
		MimeMessage m=new MimeMessage(session);
	
		try {
			m.setFrom(from);
			
			// add recipient
			m.addRecipient(javax.mail.Message.RecipientType.TO, new InternetAddress(to));
			
			//add subject
			m.setSubject(subject);
			
			m.setText(message);
			
			Transport.send(m);
			
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
	}
//	-------------------------------------------------------------------Admin-----------------------------------------------------------------
//	@Autowired
//	private AdminRepo adminRepo;
	
	public boolean isExistAdmin(String email,String password) {

		if(email.equals("admin") && password.equals("admin")) {
			return true;
		}
		return false;
	}
	@Autowired
	 private ContactRepo contactRepo;
	 

	public void submitContact(Contactus contact) {
		contactRepo.save(contact);
	}
}

