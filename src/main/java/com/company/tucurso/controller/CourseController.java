/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.entity.Course;
import com.company.tucurso.service.CategoryService;
import com.company.tucurso.service.CourseService;
import com.company.tucurso.service.OrganizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
        
    @Autowired(required = true)
    CategoryService categoryService;

    @RequestMapping(value = "/addCourse", method = RequestMethod.GET)
    public String addCourse(Model m) {

        m.addAttribute("categories", categoryService.getAll());
        m.addAttribute("organizations", organizationService.getAll());
        return "addCourse";
    }

    @RequestMapping(value = "/addCourse", method = RequestMethod.POST)
    public String addCourse(@ModelAttribute(value = "Course") Course course, @RequestParam("idOrg") Long idOrg,  @RequestParam("idCat") Long idCat) {

//        Organization comIT = organizationService.get(Long.valueOf(1));
//        Category programacion = new Category("Programacion");
//        Course javaInicial = new Course("Java inicial", programacion, comIT, "Curso de java para no programadores", 200, "200hs", "20/05", "La Plata");
//       
//                System.out.println(course.getOrganization().getName()+" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
//                Long l = Long.parseLong(course.getOrganization().getName());
        
        System.out.println("<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>cat"+idCat);
        System.out.println("<>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>org"+idOrg);
//                
        course.setOrganization(organizationService.get(idOrg));
        course.setCategory(categoryService.get(idCat));


        courseService.add(course);
        

        return "index";
    }

    @RequestMapping(value = "/showCourses")
    public String showCourses(Model m) {
        m.addAttribute("listCourses", courseService.getAll());
        return "showCourses";
    }
}
