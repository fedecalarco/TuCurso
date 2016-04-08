/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author fedec
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    /**
     * Configuracion de usuarios
     */
//    @Autowired
//    @Qualifier("userDetailsService")
//    UserDetailsService userDetailsService;

    @Autowired
    protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//        auth.userDetailsService(userDetailsService());
        
         auth.inMemoryAuthentication().withUser("fede@fede.com").password("123123").roles("USER_PROVIDER");
         auth.inMemoryAuthentication().withUser("fede.calarco@hotmail.com").password("123123").roles("USER_PROVIDER");
         auth.inMemoryAuthentication().withUser("fede2@fede2.com").password("123123").roles("USER_ROOT");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/centroEducativo/**").access("hasRole('USER_PROVIDER')")
                .antMatchers("/course/addCourse").access("hasRole('USER_PROVIDER')")
                .antMatchers("/resources/**").permitAll()
                .and().formLogin()
                    .loginPage("/login").permitAll()
                   // .usernameParameter("username").passwordParameter("password")
                    .defaultSuccessUrl("/admin")
                .and().logout().permitAll()
                .and().csrf();
    }

//    @Override
//    protected UserDetailsService userDetailsService() {
//        return userDetailsService;
//    }

}