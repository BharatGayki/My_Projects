package com.examplesSpringBootCurdOPeration.CurdOPeration.service;

import com.examplesSpringBootCurdOPeration.CurdOPeration.model.Employee;
import com.examplesSpringBootCurdOPeration.CurdOPeration.repo.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    private EmployeeRepository employeeRepository;
    @Override
    public List<Employee> getAllEmployees() {
        return  employeeRepository.findAll();
    }

    @Override
    public void saveEmployee(Employee employee) {
        this.employeeRepository.save(employee);
        // employee object which is being createrd in Employee ServiceIMPL interface Employee is in model
// by .this keyword we call the interface

    }
}
