package com.majorproject.java.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.majorproject.java.Service.UserServices;
import com.majorproject.java.UserRepository.UserRepo;
import com.majorproject.java.bean.Appoinment;
import com.majorproject.java.bean.DoctorBean;
import com.majorproject.java.bean.UserBean;

@Controller
public class AdminController {
	
//	@Autowired
//	private DoctorRepo repo;
	
	@Autowired
	private UserRepo userrepo;
	
	@Autowired
	private UserServices service;
	
//	----------------------------------------------adminlogin---------------------------------------------------------------------------
	
	@RequestMapping("/admin-login")
	public String adminLogin() {
		return "admin-login";
	}
	
	@RequestMapping("/admin-loggedin")
	public String adminLoginsubmit(@RequestParam("email")String email,@RequestParam("password") String pwd) {
		boolean isExistAdmin=service.isExistAdmin(email, pwd);
		if(isExistAdmin==true) {
			return "redirect:/admin";
		}
		else {
			return "redirect:/admin-login";
		}
	}
	
//	---------------------------------------------Admin front page------------------------------------------------------------------------------
	@RequestMapping("/admin")
	public String adminPage(ModelMap map) {
		int userCount=service.countUser();
		map.addAttribute("userCount", userCount);
		
		int docCount=service.doctorCount();
		map.addAttribute("doctorCount", docCount);
		
		int appoCount=service.appointmentCount();
		map.addAttribute("appoCount",appoCount);
		map.addAttribute("totalCount",userCount+docCount);
		
		return "Adminfrontpage";
	}
//	---------------------------------------------------------appoinment---------------------------------------------------------------
	@RequestMapping("/appoinment_admin")
	public String appoinment_admin(ModelMap map) {
		List<Appoinment> appoinment=service.getAll();
		map.addAttribute("appo", appoinment);
		return "appoinment_admin";
	}
	@RequestMapping("/delete-appoinment")
	public String deleteAppoinment(@RequestParam int id) {
		service.deleteAppoinment(id);
		return "redirect:/appoinment_admin";
	}
	
//	---------------------------------------------------------------------------user-------------------------------------------------------------------
	
	//********************************table content*******************************************
	@RequestMapping("/user")
	public String userDetails(ModelMap map) {
		List<UserBean> users= service.fetchAlluser();
		map.addAttribute("users", users);
		return "user_list_admin";
	}
	

	
//	***************************************delete user***************************************************************
	
	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam String email) {
		service.deleteUser(email);
		return "redirect:/user";
	}
	
	
	

//--------------------------------------------------------------------------------------------------------------------------------------------------------

//--------------------------------------------------------------Doctors--------------------------------------------------------------------------------

	
	//********************************table content*******************************************
	@RequestMapping("/doctors")
	public String doctorsDetails(ModelMap map) {
		List<DoctorBean> docs= service.fetchAllDoctor();
		map.addAttribute("docs", docs);
		return "doctor_list_admin";
	}
	
	
//	****************************************adding new DOCTOR*****************************************
	public static String uploadDirectory=System.getProperty("user.dir")+"/src/main/webApp/imagedata";
	@RequestMapping("/add-doctor")
	public String showAddDoctor() {
		return "adddoctor_admin";
	}
	
	@RequestMapping("/adddoctor")
	public String adddoctor(DoctorBean doctor,@RequestParam("img") MultipartFile file,ModelMap map) throws IOException {
		
		String filename=file.getOriginalFilename();
		Path filenameAndPath= Paths.get(uploadDirectory,filename);
		Files.write(filenameAndPath,file.getBytes());
		doctor.setUserFile(filename);
		
		service.submitdata(doctor);
		return "redirect:/doctors";
	}
	
//	***************************************delete DOCTOR***************************************************************
	
	@RequestMapping("/delete-doctor")
	public String deleteDoctor(@RequestParam int id) {
		service.deletedoctor(id);
		return "redirect:/doctors";
	}
	
	
	
//	******************************************update DOCTOR**********************************************************
	
	@RequestMapping("/update-doctor")
	public String showUpdateDoctorPage(@RequestParam int id,ModelMap map) {
		DoctorBean doc=service.getById(id);
		map.addAttribute("doc", doc);
		return "updatedoctor_admin";
	}
	
	@RequestMapping("/updatedoctor")
public String updatedoctor(DoctorBean doctor,@RequestParam("img") MultipartFile file,ModelMap map) throws IOException {
		
		String filename=file.getOriginalFilename();
		Path filenameAndPath= Paths.get(uploadDirectory,filename);
		Files.write(filenameAndPath,file.getBytes());
		doctor.setUserFile(filename);
		
		service.submitdata(doctor);
		return "redirect:/doctors";
	}

	
}











