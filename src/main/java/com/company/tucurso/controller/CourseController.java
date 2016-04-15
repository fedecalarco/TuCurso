/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.entity.Course;
import com.company.tucurso.entity.Search;
import com.company.tucurso.entity.SearchFilter;
import com.company.tucurso.service.CategoryService;
import com.company.tucurso.service.CourseService;
import com.company.tucurso.service.LocationService;
import com.company.tucurso.service.OrganizationService;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author fedec
 */
@Controller
@RequestMapping(value = "/course")
@SessionAttributes({"session_user_provider"})
public class CourseController {

    @Autowired(required = true)
    CourseService courseService;

    @Autowired(required = true)
    OrganizationService organizationService;

    @Autowired(required = true)
    CategoryService categoryService;

    @Autowired(required = true)
    LocationService locationService;

    @RequestMapping(value = "/addCourse", method = RequestMethod.GET)
    public String addCourse(Model m) {

        m.addAttribute("categories", categoryService.getAll());
   //     m.addAttribute("organizations", organizationService.get(organizationId));
        return "addCourse";
    }

    @RequestMapping(value = "/addCourse", method = RequestMethod.POST)
    public String addCourse(@ModelAttribute(value = "Course") Course course, @RequestParam("idOrg") Long idOrg, @RequestParam("idCat") Long idCat) {

        course.setOrganization(organizationService.get(idOrg));
        course.setCategory(categoryService.get(idCat));
        
        System.out.println(course.getDescriptionShort()+"9999999999999999999999999999");

        courseService.add(course);

        return "redirect:/centroEducativo/";
    }

    @RequestMapping(value = "/showAllCourses")
    public String showAllCourses(Model m) {
        m.addAttribute("listCourses", courseService.getAll());
        m.addAttribute("listCategories", categoryService.getAll());
        m.addAttribute("listProv", locationService.getProvice("Argentina"));
        return "showCourses";
    }

    @RequestMapping(value = "/showCourses")
    public String showCourses(
            Model m,
            @ModelAttribute(value = "searchFilter") Search searchFilter) {

        // Mostrar contenido en el menu izquierdo ( categoriesLst - provLst)
        /**
         * sadas 
         */
        m.addAttribute("listCategories", categoryService.getAll());
        m.addAttribute("listProv", locationService.getProvice("Argentina"));

        List<String> filtros = new ArrayList();
        if (!"".equals(searchFilter.getSeachTxt()) && !"".equals(searchFilter.getLocation())) {
            filtros.add(searchFilter.getSeachTxt());
            filtros.add(searchFilter.getLocation());
        }else if(!"".equals(searchFilter.getSeachTxt())){
            filtros.add(searchFilter.getSeachTxt());
        }else if(!"".equals(searchFilter.getLocation())){
            filtros.add(searchFilter.getLocation());
        }

        m.addAttribute("listaFiltros", filtros);

        m.addAttribute("listCourses", courseService.getCourseFilter(searchFilter));

        return "showCourses";
    }
//
//    @RequestMapping(value = "/showCourseFilter", method = RequestMethod.GET)
//    public String showCoursesFilter(
//            Model m,
//            @RequestParam(value = "idCategory", required = false) String category,
//            @RequestParam(value = "prov", required = false) String prov
//    ) {
//        List<String> filtros = new ArrayList<String>();
//
//        if (category != null) {
//            m.addAttribute("listCourses", courseService.getCourseFilter(categoryService.getCategoryByName(category).getCategory_ID()));
//            filtros.add(category);
//        }
//
//        if (prov != null) {
//            filtros.add(prov);
//        }
//
//        m.addAttribute("listCategories", categoryService.getAll());
//        m.addAttribute("listProv", locationService.getProvice("Argentina"));
//
//        m.addAttribute("listaFiltros", filtros);
//
//        return "showCourses";
//    }

    @RequestMapping(value = "/describeCourse")
    public String describeCourse(Model m, @RequestParam Long id) {
        m.addAttribute("course", courseService.get(id));
        return "describeCourse";
    }
}
