/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.entity.Organization;
import com.company.tucurso.entity.Provider;
import com.company.tucurso.service.OrganizationService;
import com.company.tucurso.service.ProviderService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author fedec
 */
@Controller
@RequestMapping("/organization")
public class OrganizationController {

    @Autowired(required = true)
    OrganizationService organizationService;

    @Autowired(required = true)
    ProviderService providerService;

    @RequestMapping(value = "/register", method = GET)
    public String registerOrganization() {

        return "newOrganization";

    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerOrganization(
            @ModelAttribute(value = "Provider") Provider provider) {

        // Verificar que el email no este registrado - contraseña valida  - etc..
        provider.setOrganizationProfile(new Organization(provider.getNameOrganization(), "", null));

        providerService.add(provider);
        return "index";
    }

    @RequestMapping(value = "/showOrganization", method = GET)
    public String showOrganization(@RequestParam(value = "id") long id, Model m) {

        m.addAttribute("organization", organizationService.get(id));
        m.addAttribute("lstCourses", organizationService.getCourses(id));
        return "showOrganization";

    }

    @RequestMapping(value = "/addOrganization", method = GET)
    public String addOrganization() {

        return "addOrganization";
    }

    @RequestMapping(value = "/updateOrganization", method = GET)
    public String UpdateOrganization(@RequestParam long id, Model m) {
        
        m.addAttribute("org", organizationService.get(id));
        return "addOrganization";
    }

    @RequestMapping(value = "/addOrganization", method = RequestMethod.POST)
    public String addOrganization(
            @ModelAttribute(value = "Organization") Organization organization,
            @RequestParam("logos") MultipartFile file)
            throws IOException {

        organization.setLogo(file.getBytes());

            System.out.println(">>>>>>>>>>>>>>> " + organization.getOrganization_ID() + "+++++++++++" + organization.getName());
        Organization org = organizationService.get(organization.getOrganization_ID());
        org.setName(organization.getName());
        org.setDescription(organization.getDescription());
        if(organization.getLogo() != null){
            org.setLogo(organization.getLogo());
        }
        

        organizationService.update(org);
        return "provider_Menu";
    }

    @RequestMapping(value = "imageDisplay", method = GET)
    public void showImage(@RequestParam Long id, HttpServletResponse response, HttpServletRequest request)
            throws ServletException, IOException {

        Organization org = organizationService.get(id);
        response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
        response.getOutputStream().write(org.getLogo());
        response.getOutputStream().close();
    }

}
