package com.majorproject.java.controller;


import java.io.IOException;
import java.util.Optional;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.majorproject.java.Service.UserServices;
import com.majorproject.java.UserRepository.UserRepo;
import com.majorproject.java.bean.*;

@Controller
public class PageController {

	@Autowired
	private UserServices service;
	
	@Autowired
	UserRepo repo;
	
	
//	@Autowired
//	private UserBean userBean;
	

	

	@RequestMapping(value = "/signup")
	public String signupPage() {
		return "signup";
	}
	
	@RequestMapping(value = "/login")
	public String loginPage() {
		
		return "login";
	}
	
	
	
	@RequestMapping("/signupsubmit")
	public String signupsubmit(@RequestParam("password") String pwd,@RequestParam("confirmPassword") String pwd2, UserBean user,ModelMap map,HttpServletResponse response) throws IOException  {
		
		
		//password and confirm password must be same
		if(!pwd.equals(pwd2)) {
			map.put("message", "Password & Confirm Password must be same");
			return "signup";
		}
		
		UserBean u=service.getById(user.getEmail());
		if(u==null) {
			repo.save(user);
			Cookie ck=new Cookie("cookie",user.getEmail());
			ck.setMaxAge(60*60*24);
			response.addCookie(ck);
			map.put("email", user.getEmail());
			return "redirect:/home";
		}
		// user that already exist
		else {
			map.put("message1", "User Already Exist Please Login");
			return "signup";
			
		}

	}
	
	@RequestMapping("/loginsubmit")
	public String loginsubmit(@RequestParam("email") String email,@RequestParam("password") String pwd, ModelMap map,HttpServletResponse response)  {
		
		boolean isExist=service.isExist(email, pwd);
		if(isExist==true) {
			Cookie ck=new Cookie("cookie",email);
			ck.setMaxAge(60*60*24);
			response.addCookie(ck);
			map.put("email", email);
			return "redirect:/home";
		}
		else {
			map.put("message","Invalid Credentials/Existing user ");
			return "login";
		}
	}
	
	
	@RequestMapping("/logout")
	public String logout(HttpServletResponse response,HttpServletRequest request) {
		Cookie []ck=request.getCookies();
		for(Cookie c:ck) {
			if(c.getName().equalsIgnoreCase("cookie")) {
				c.setValue(null);
				response.addCookie(c);
			}
		}
		
		return "redirect:/home";
	}

}
