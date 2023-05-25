//package com.mkpits.Tarding11.controller1;
//
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.*;
//
//@Controller
//public class User_Controller {
//
//    @RequestMapping(method = RequestMethod.GET, path = "/register")
//    public ResponseEntity<String> registerUser(String name) {
//        return ResponseEntity.status(HttpStatus.OK).body("HelloBharat");
//    }
//
//    @RequestMapping(method = RequestMethod.PUT, path = "/register1")
//    public ResponseEntity<String> registerUser1(String name) {
//        return ResponseEntity.status(HttpStatus.OK).body("Jai Shree Krishna");
//    }
//
//    @GetMapping(path = "/user")
//
//    public ResponseEntity<String>getUsers(){
//
//        return ResponseEntity.status(HttpStatus.OK).body("HelloBharat-Boss");
//
//    }
//
//    @PostMapping(value = "/users1")
//    public ResponseEntity<String>getUsers1() {
//
//        return ResponseEntity.status(HttpStatus.OK).body("Krishna");
//    }
//}
