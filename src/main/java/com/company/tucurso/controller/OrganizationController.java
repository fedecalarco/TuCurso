/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.service.OrganizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author fedec
 */
@Controller
@RequestMapping("/organization")
public class OrganizationController {
    
    @Autowired(required = true)
    OrganizationService organizationService;
    
    @RequestMapping(value="/showOrganization", method = GET)
    public String showOrganization(@RequestParam(value = "id") long id, Model m){
        
        m.addAttribute("organization", organizationService.get(id));
        m.addAttribute("lstCourses", organizationService.getCourses(id));
        return "showOrganization";
        
    }
    
    
    
}
