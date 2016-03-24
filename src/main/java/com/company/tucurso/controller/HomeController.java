/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.service.CategoryService;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author fedec
 */
@Controller
public class HomeController {
    
    @Autowired(required = true)
    CategoryService categoryService;
    
    @RequestMapping(value = "/")
    public String home(Model model){
        
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("pais", paises());
        return "index";
    }
    
    
        private List<String> paises(){
        List<String> lstCiudades = new ArrayList<String>();
        lstCiudades.add("Argentina");
        lstCiudades.add("Uruguay");
        return lstCiudades;
    }

    
    
}
