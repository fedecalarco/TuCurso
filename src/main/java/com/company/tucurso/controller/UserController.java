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

/**
 *
 * @author fede
 */

@Controller
public class UserController {

    
    @Autowired(required = true)
    UserService userService;
    
    public void registerUser(User u){
        userService.add(u);
    }
    


}
