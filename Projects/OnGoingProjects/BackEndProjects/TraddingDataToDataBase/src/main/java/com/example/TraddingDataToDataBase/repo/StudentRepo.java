package com.example.TraddingDataToDataBase.repo;

import com.example.TraddingDataToDataBase.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepo {

    public interface studentRepo extends JpaRepository<Student, Long> {

    }




}
