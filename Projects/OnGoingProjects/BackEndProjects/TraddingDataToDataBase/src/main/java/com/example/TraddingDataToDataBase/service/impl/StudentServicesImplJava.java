package com.example.TraddingDataToDataBase.service.impl;

import com.example.TraddingDataToDataBase.dto.StudentDto;
import com.example.TraddingDataToDataBase.model.Student;
import com.example.TraddingDataToDataBase.repo.StudentRepo;
import com.example.TraddingDataToDataBase.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Primary
public class StudentServicesImplJava implements StudentService {


    @Override
    public List<StudentDto> getAllStudent() {


        @Autowired
        StudentRepo studentRepo;

        @Override
        public List<StudentDto> getAllStudent() {
            List<StudentDto> studentDtoList = new ArrayList<>();
            List<Student> studentList = studentRepo.findAll();
            studentList.stream().forEach(student -> {
                StudentDto studentDto = StudentDto.builder()
                        .id(student.getId())
                        .fName(student.getFirstName())
                        .lName(student.getLastName())
                        .email(student.getEmail())
                        .mobile(student.getMobile())
                        .status(student.getStatus())
                        .build();
                studentDtoList.add(studentDto);
            });
            return studentDtoList;
        }


}
