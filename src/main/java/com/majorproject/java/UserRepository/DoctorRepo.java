package com.majorproject.java.UserRepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.majorproject.java.bean.DoctorBean;

public interface DoctorRepo extends JpaRepository<DoctorBean, Integer> {

}
