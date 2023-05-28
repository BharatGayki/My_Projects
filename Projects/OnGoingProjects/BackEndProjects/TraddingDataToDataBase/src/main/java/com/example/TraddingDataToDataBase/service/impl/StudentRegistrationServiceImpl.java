package com.example.TraddingDataToDataBase.service.impl;

import com.example.TraddingDataToDataBase.dto.StudentDto;
import com.example.TraddingDataToDataBase.model.Student;
import com.example.TraddingDataToDataBase.repo.StudentRepo;
import com.example.TraddingDataToDataBase.service.StudentRegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentRegistrationServiceImpl implements StudentRegistrationService {


    @Autowired
    StudentRepo studentRepo;
    @Override
    public StudentDto registerUser(StudentDto studentDto) {



        Student student = Student.builder()
                .firstName(studentDto.getFName())
                .lastName(studentDto.getLName())
                .email(studentDto.getEmail())
                .mobile(studentDto.getMobile())
                .status("DRAFT")
                .build();
        Student afterSave = studentRepo.save(student);
        studentDto.setId(afterSave.getId());
        return studentDto;    }
}
