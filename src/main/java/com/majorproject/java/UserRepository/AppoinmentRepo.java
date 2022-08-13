package com.majorproject.java.UserRepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.majorproject.java.bean.Appoinment;

public interface AppoinmentRepo extends JpaRepository<Appoinment, Integer> {

}
