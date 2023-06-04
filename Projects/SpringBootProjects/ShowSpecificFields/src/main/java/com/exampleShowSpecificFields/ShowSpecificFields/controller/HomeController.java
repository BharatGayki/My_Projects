package com.exampleShowSpecificFields.ShowSpecificFields.controller;

import com.exampleShowSpecificFields.ShowSpecificFields.model.ModelClass;
import com.exampleShowSpecificFields.ShowSpecificFields.services.ServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {

  @Autowired
    private ServiceInterface serviceInterface;


  @GetMapping("/index")

   public String viewHomePage(Model model){
    model.addAttribute("listofFields",serviceInterface.getAllFields());

    return "index";

}

@GetMapping("/showNewFieldsForm")
public String showNewFieldsForm(Model model){
    ModelClass modelClass = new ModelClass();
    model.addAttribute("modelClass",modelClass);
    return "saveallfields";
}

@PostMapping("/saveAllFields")
    public String saveAllFields(@ModelAttribute("modeClass")ModelClass modelClass){
    serviceInterface.saveAllFields(modelClass);
    return "redirect:/index";

}

//
//@GetMapping("/saveAllFields")
//public String saveAllFields(@ModelAttribute("showFields")ModelClass modelClass){
//    serviceInterface.saveAllFields(modelClass);
//    return "redirect:/index";
//}
}
