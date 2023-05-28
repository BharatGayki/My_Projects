package com.example.TraddingDataToDataBase.service.impl;

import com.example.TraddingDataToDataBase.dto.StudentDto;
import com.example.TraddingDataToDataBase.service.StudentService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class StudentListHardCoreServicesImpl implements StudentService {

    @Override
    public List<StudentDto> getAllStudent() {

        List<StudentDto> studentDtoList = new ArrayList<>();

        StudentDto studentDtoList1 = StudentDto.builder()
                .id(101L)
                .fName("Bharat")
                .lName("Gayki")
                .email("bhaaratgayki@gmail.com")
                .mobile("997536927")
                .status("Fit&Fine")
                .build();

        StudentDto studentDtoList2 = StudentDto.builder()
                .id(101L)
                .fName("Sachin")
                .lName("Kalambe")
                .email("sachinkalambe@gmail.com")
                .mobile("8765467738")
                .status("Fit&Fine and healthy")
                .build();

        StudentDto studentDtoList3 = StudentDto.builder()
                .id(101L)
                .fName("Pranay")
                .lName("Jumbde")
                .email("pranayjumbde@gmail.com")
                .mobile("8765467738")
                .status("Fit&Fine,healthy,intelligent")
                .build();

        StudentDto studentDtoList4 = StudentDto.builder()
                .id(101L)
                .fName("Vishal")
                .lName("Headau")
                .email("vishalheadeao@gmail.com")
                .mobile("8765467738")
                .status("Fit&Fine,healthy,intelligent & procastinator")
                .build();



        studentDtoList.add(studentDtoList1);
        studentDtoList.add(studentDtoList2);
        studentDtoList.add(studentDtoList3);
        studentDtoList.add(studentDtoList4);

        return studentDtoList;
    }

    {




    }


}
