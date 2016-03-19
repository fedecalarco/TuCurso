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
@Entity
public class User extends Customer {

    private String firstname;
    private String lastname;

    public User(String firstname, String lastname, String county, String province, String city, String phone, String user, String password, String email) {
        super(county, province, city, phone, user, password, email);
        this.firstname = firstname;
        this.lastname = lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

}
