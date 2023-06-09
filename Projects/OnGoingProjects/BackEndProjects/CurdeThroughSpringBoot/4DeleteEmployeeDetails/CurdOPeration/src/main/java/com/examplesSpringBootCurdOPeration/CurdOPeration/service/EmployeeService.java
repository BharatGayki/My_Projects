package com.examplesSpringBootCurdOPeration.CurdOPeration.service;

import com.examplesSpringBootCurdOPeration.CurdOPeration.model.Employee;

import java.util.List;

public interface EmployeeService {

    List<Employee> getAllEmployees();
    void saveEmployee(Employee employee);

    Employee getEmployeeById(long id);

    void deleteEmployeeById(long id);
}
