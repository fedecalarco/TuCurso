/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.service.LocationService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author fedec
 */
@Controller
@RequestMapping(value = "/ajax")
public class ajax {
    
    @Autowired(required = true)
    LocationService locationService;
    
    @RequestMapping(value="/cargarProv",method = RequestMethod.POST)
    public @ResponseBody List getProv(
            Model m,
            @RequestParam("pais") String pais
    ){
     
        System.out.println(pais);  
    return locationService.getProvice(pais); 
    }
    
    
        @RequestMapping(value="/cargarCiudad",method = RequestMethod.POST)
    public @ResponseBody List getCity(
            Model m,
            @RequestParam("prov") String prov
    ){
    return locationService.getCity(prov); 
    }
}
