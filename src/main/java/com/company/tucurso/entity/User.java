/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.entity;

import javax.persistence.Entity;

/**
 *
 * @author fede
 */

public class User extends Account {
    
    
    private String name;
    private String phone;
    private String email;
    private String dni;

    public User() {
    }

    public User(String name, String phone, String email, String dni) {
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.dni = dni;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }
    
    

    
    
}
