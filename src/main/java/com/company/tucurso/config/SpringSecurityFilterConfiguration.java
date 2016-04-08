/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.config;

/**
 *
 * @author fedec
 */
import org.springframework.core.annotation.Order;
import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;
@Order(value=2)
public class SpringSecurityFilterConfiguration extends AbstractSecurityWebApplicationInitializer {


}