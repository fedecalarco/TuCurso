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
        model.addAttribute("prov", provincias());
        model.addAttribute("ciudad", ciudades());
        return "index";
    }
    
    private List<String> ciudades(){
        List<String> lstCiudades = new ArrayList<String>();
        lstCiudades.add("La Plata");
        lstCiudades.add("Capital Federal");
        lstCiudades.add("Puerto Madryn");
        
        return lstCiudades;
    }
    
        private List<String> paises(){
        List<String> lstCiudades = new ArrayList<String>();
        lstCiudades.add("Argentina");
        lstCiudades.add("Uruguay");
        lstCiudades.add("Chile");
        
        return lstCiudades;
    }
            private List<String> provincias(){
        List<String> lstCiudades = new ArrayList<String>();
        lstCiudades.add("Buenos Aires");
        lstCiudades.add("Chubut");
        lstCiudades.add("Cordoba");
        
        return lstCiudades;
    }
    
    
}
