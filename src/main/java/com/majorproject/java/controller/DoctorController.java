package com.majorproject.java.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.majorproject.java.Service.UserServices;
import com.majorproject.java.UserRepository.AppoinmentRepo;
import com.majorproject.java.UserRepository.DoctorRepo;
import com.majorproject.java.bean.Appoinment;
import com.majorproject.java.bean.DoctorBean;
import com.majorproject.java.bean.UserBean;

@Controller
public class DoctorController {
	
	@Autowired
	DoctorRepo doc;
	
	@Autowired
	UserServices service;
	
	
	
	public static String uploadDirectory=System.getProperty("user.dir")+"/src/main/webApp/imagedata";

//	@RequestMapping("/doctor")
//	public String doctorPage() {
//		return "doctor_registration_page";
//	}
//	@RequestMapping(value = "/doctorsubmit")
//	public String doctorPageSubmit(DoctorBean doctor,@RequestParam("img") MultipartFile file,ModelMap map) throws IOException {
//		
//		String filename=file.getOriginalFilename();
//		Path filenameAndPath= Paths.get(uploadDirectory,filename);
//		Files.write(filenameAndPath,file.getBytes());
//		doctor.setUserFile(filename);
//		
//		doc.save(doctor);
//		map.addAttribute("doc",doctor);
//		return "show";
//	}
//	-----------------------------------doctor details page---------------------------------------------------------------------------------------
	
	@RequestMapping("/docdetail")
	public String doctorDetails(@CookieValue(value="cookie",required=false)String email,ModelMap map) {
			if(email==null||email.equals("")) {
				return "redirect:/login";
			}
			List<DoctorBean> docs=service.fetchAllDoctor();
			map.addAttribute("docs", docs);
			return "doctor_details";
		
	}
	
//	-------------------------------------------------------------Appointment page--------------------------------------------------------------------

	@RequestMapping("/appoinment")
	public String appoinment(@RequestParam int id , ModelMap map){
		DoctorBean doc=service.getById(id);
		map.addAttribute("doc",doc);
		return "Appoinment";
	}
	
//	-------------------------------------------------------------------Appointment database------------------------------------------------------------
	@Autowired
	private AppoinmentRepo appRepo;
	 
	Appoinment appoinment=new Appoinment();
	
	@RequestMapping(value="/appoinmentsubmit")
	public String appoinmentSubmit(@RequestParam("id") int id,@RequestParam("day")String date,@CookieValue(value="cookie",required = false)String email) {
		DoctorBean doc=service.getById(id);
		UserBean user=service.getById(email);
		
		appoinment.setDoc_id(id);
		appoinment.setDocName(doc.getUserName());
		appoinment.setDocPhone(doc.getUserMobile());
		appoinment.setDocSpecial(doc.getUserSpecial());
		appoinment.setDocCity(doc.getUserCity());
		appoinment.setDocFee(doc.getUserFee());
		appoinment.setDocTime1(doc.getUserTime1());
		appoinment.setPatientName(user.getName());
		appoinment.setPatientEmail(email);
		appoinment.setPatientCity(user.getCity());
		appoinment.setPatientPhone(user.getPhone());
		appoinment.setDate(date);
		appRepo.save(appoinment);

		// sending email
//		String time=appoinment.getDocTime1();
//		int val=Integer.parseInt(time.substring(0, 2));
//		if(val<12) {
//			time= val+" AM";
//					
//		}
//		else if(val==12) {
//			time=val+" PM";
//		}
//		else if(val>12){
//			
//			val-=12;
//			time=val+" PM";
//		}
//		String subject= "Apooinment confirmation -by Therify";
//		String message=" Hello "+user.getName()+"\n Thanks for choosing therify \n You have an appoinment with "+appoinment.getDocName()+" booked on "+appoinment.getDate()+" at "+time+".\n Stay healthy and strong.";
//		service.sendEmail(email, subject, message);
		return "redirect:/home";
		
	}


}
