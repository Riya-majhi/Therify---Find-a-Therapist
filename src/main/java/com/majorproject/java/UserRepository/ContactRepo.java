package com.majorproject.java.UserRepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.majorproject.java.bean.Contactus;

public interface ContactRepo extends JpaRepository<Contactus, Integer> {

}
