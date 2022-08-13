package com.majorproject.java.controller;


import org.springframework.beans.factory.annotation.Autowired;	
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.majorproject.java.Service.UserServices;
import com.majorproject.java.bean.Contactus;

@Controller
public class MainFrontPageController {
	
	@Autowired
	UserServices service;
	
	@RequestMapping("/home")
	public String homePage(@CookieValue(value="cookie",required = false)String email,ModelMap map)  {
		if(email==null||email.equals("")) {
			return "home_page";
		}
			map.addAttribute("name", email);
			return "home_page_loggedin";
		
	}
	
	@RequestMapping("/quiz_anxiety")
	public String quizAnxiety() {
		
		return "quiz_anxiety";
			
	}
	@RequestMapping("/quiz_depression")
	public String quizDepression() {
		
		return "quiz_depression";
	}
	@RequestMapping("/quiz_general_mental_health")
	public String quizgeneral_mental_health() {
		
		return "quiz_general_mental_health";
	}
	@RequestMapping(value = "/contactus", method= RequestMethod.POST)
	public String contactUs(Contactus contact)
	{
		service.submitContact(contact);
		return "redirect:/home" ;
		
	}
	

}
