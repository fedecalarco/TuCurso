/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.entity.Category;
import com.company.tucurso.entity.Course;
import com.company.tucurso.entity.Organization;
import com.company.tucurso.service.CourseService;
import com.company.tucurso.service.OrganizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author fedec
 */
@Controller
@RequestMapping(value = "/course")
public class CourseController {
    
    @Autowired(required = true)
    CourseService courseService;
    
    @Autowired(required = true)
    OrganizationService organizationService;
    
    @RequestMapping(value = "/addCourse", method = RequestMethod.POST)
    public String AddCourse(){
     //   Organization comIT = new Organization("ComunidadIT");
        
        Organization comIT = organizationService.get(Long.valueOf(1));
        Category programacion = new Category("Programacion");
        Course javaInicial = new Course("Java inicial", programacion, comIT, "Curso de java para no programadores", 200, "200hs", "20/05", "La Plata");
        
        courseService.add(javaInicial);
      
        
        
        return "index";
    }
    
    @RequestMapping(value="/showCourses")
    public String ShowCourses(Model m){
        m.addAttribute("listCourses", courseService.getAll());
        return "showCourses";
    }
}
