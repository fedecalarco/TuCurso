/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.controller;

import com.company.tucurso.entity.User;
import com.company.tucurso.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author fede
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired(required = true)
    UserService userService;

    @RequestMapping(value = "/registrar", method = RequestMethod.POST)
    public String registerUser() {

        User u = new User("Federico", "Calarco", "Argentina", "Chubut", "Puerto Madryn", "2804722352", "fedecalarco", "123123", "fede.calarco@hotmail.com");

        userService.add(u);
        
        return "index";
    }

}
