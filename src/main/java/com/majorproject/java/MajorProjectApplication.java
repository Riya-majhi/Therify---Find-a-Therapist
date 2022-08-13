package com.majorproject.java;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.majorproject.java.controller.DoctorController;


@SpringBootApplication
@ComponentScan("com.*")
public class MajorProjectApplication {

	public static void main(String[] args) {
		
		new File(DoctorController.uploadDirectory).mkdir();
		SpringApplication.run(MajorProjectApplication.class, args);
	}

}
