/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.entity.Account;
import com.company.tucurso.entity.Provider;
import com.company.tucurso.service.CategoryService;
import com.company.tucurso.service.CourseService;
import com.company.tucurso.service.OrganizationService;
import com.company.tucurso.service.ProviderService;
import java.util.ArrayList;
import java.util.List;
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
public class HomeController {

    @Autowired(required = true)
    CategoryService categoryService;

    @Autowired(required = true)
    ProviderService providerService;
    
    @Autowired(required = true)
    CourseService courseService;
    
    @Autowired(required = true)
    OrganizationService organizationService;
    

    @RequestMapping(value = "/")
    public String home(Model model) {

        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("pais", paises());
        return "index";
    }

    private List<String> paises() {
        List<String> lstCiudades = new ArrayList<String>();
        lstCiudades.add("Argentina");
        lstCiudades.add("Uruguay");
        return lstCiudades;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login2(@RequestParam(value = "email") String email, @RequestParam(value = "password") String password, Model m) {

        System.out.println("user: " + email + " - pass: " + password);

        Provider p;

        if ((p = providerService.getByEmail(email)) != null) {

            if (password.equals(p.getPassword())) {
                m.addAttribute("provider", p);
                m.addAttribute("lstCourses", organizationService.getCourses(p.getId()));
                m.addAttribute("ok", "User & Pass correctos");
                return "provider_Menu";
            }
        } else {
            m.addAttribute("ok", "User || Pass incorrectos");

        }
        return "login";

    }
}
