package com.example.TraddingDataToDataBase.controller;

import com.example.TraddingDataToDataBase.dto.StudentDto;
import com.example.TraddingDataToDataBase.service.StudentRegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

public class AdminRegistrationUserController {

    @Autowired
    StudentRegistrationService studentRegistrationService;
    @PostMapping("/register-user")
    public String registerUser(@ModelAttribute("student") StudentDto student) {
        studentRegistrationService.registerUser(student);
        return "redirect:/";
    }

}
