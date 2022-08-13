package com.majorproject.java.UserRepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.majorproject.java.bean.UserBean;

public interface UserRepo extends JpaRepository<UserBean,String>   {

	
	}

