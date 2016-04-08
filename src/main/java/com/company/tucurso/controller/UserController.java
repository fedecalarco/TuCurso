/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.entity.User;
import com.company.tucurso.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author fede
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired(required = true)
    UserService userService;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registerCourseGet(){
        
        return "registerCourse";
    }
    
    
    
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCoursePost(@ModelAttribute(value = "User") User user) {

        System.out.println("-> "+ user.getName());
        // Inscripcion corrcta un administrador se pondra en contacto... bla bla 
        
        return "redirect:/course/showAllCourses";
    }

}
