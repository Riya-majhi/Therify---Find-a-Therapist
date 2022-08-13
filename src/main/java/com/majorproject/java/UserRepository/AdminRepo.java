package com.majorproject.java.UserRepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.majorproject.java.bean.AdminBean;

public interface AdminRepo extends JpaRepository<AdminBean, String> {

}
