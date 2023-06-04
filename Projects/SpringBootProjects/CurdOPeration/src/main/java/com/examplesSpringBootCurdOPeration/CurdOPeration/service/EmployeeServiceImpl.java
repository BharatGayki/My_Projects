package com.examplesSpringBootCurdOPeration.CurdOPeration.service;

import com.examplesSpringBootCurdOPeration.CurdOPeration.model.Employee;
import com.examplesSpringBootCurdOPeration.CurdOPeration.repo.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

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

    @Override
    public Employee getEmployeeById(long id) {
        Optional<Employee>optional = employeeRepository.findById(id);

        Employee employee = null;// why null why not zero
        if (optional.isPresent()){
            employee = optional.get();
        }
        else {
            throw new RuntimeException("Employee not found for id::"+id);
            /// also add error page


        }

        return employee;
    }

    @Override
    public void deleteEmployeeById(long id) {
        this.employeeRepository.deleteById(id);
    }

    @Override
    public Page<Employee> findPaginated(int pageNo, int pageSize) {

        //Page = returntype -> Employee = class in model -> int pageNo, int pageSize = parametres
        Pageable pagable = PageRequest.of( 1 ,pageSize);
        //Pageable = import_class  -> PageRequest = by default class
        return this.employeeRepository.findAll(pagable);

    }
}
