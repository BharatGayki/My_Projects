package com.examplesSpringBootCurdOPeration.CurdOPeration.controller;

import com.examplesSpringBootCurdOPeration.CurdOPeration.model.Employee;
import com.examplesSpringBootCurdOPeration.CurdOPeration.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;


    @GetMapping("/index")
    public String viewHomePage(Model model) {
        model.addAttribute("listEmployees", employeeService.getAllEmployees());
        return "index";

    }
    @GetMapping("/showNewEmployeeForm")
    public String showNewEmployeeForm(Model model){
        Employee employee = new Employee();
        model.addAttribute("employee",employee);
        return "new_employee";// thyemleaf template
    }

    @PostMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute("employee")Employee employee){
        employeeService.saveEmployee(employee);
        return "redirect:/index";

    }

    @GetMapping("/showFormforUpdates/{id}")
    public String showFormforUpdates(@PathVariable(value = "id")long id,Model model){

        Employee employee = employeeService.getEmployeeById(id);// parameter is being passed
        //  employee = object -> employeeService = declared above -> getEmployeeById = method made in interface

        model.addAttribute("employee",employee);
        // employee object passes through add attribute
        return "update_employee";
    }
}
