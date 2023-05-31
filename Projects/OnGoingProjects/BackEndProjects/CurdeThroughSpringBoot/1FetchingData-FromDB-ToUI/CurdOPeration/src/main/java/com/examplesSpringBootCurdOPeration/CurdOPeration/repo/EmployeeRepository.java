package com.examplesSpringBootCurdOPeration.CurdOPeration.repo;

import com.examplesSpringBootCurdOPeration.CurdOPeration.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}