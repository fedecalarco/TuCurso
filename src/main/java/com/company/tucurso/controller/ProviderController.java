/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.entity.Provider;
import com.company.tucurso.service.OrganizationService;
import com.company.tucurso.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author fedec
 */
@Controller
@RequestMapping("/centroEducativo")
@SessionAttributes({"session_user_provider"})
public class ProviderController {

    @Autowired(required = true)
    ProviderService providerService;

    @Autowired(required = true)
    OrganizationService organizationService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String menu(Model m) {

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String email = auth.getName();

        Provider user_provider = providerService.getByEmail(email);
        
        m.addAttribute("session_user_provider", user_provider);
        m.addAttribute("lstCourses", organizationService.getCourses(user_provider.getId()));
        
        return "provider_Menu";
    }
    


}
