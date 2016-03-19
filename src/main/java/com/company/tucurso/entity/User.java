/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author fede
 */
@Entity
public class User extends Customer {
    @Id
    private long user_ID;
    private String firstname;
    private String lastname;
    
    public User(String firstname, String lastname, String county, String province, String city, String phone, String user, String password, String email) {
        super(county, province, city, phone, user, password, email);
        this.firstname = firstname;
        this.lastname = lastname;
    }

    public long getUser_ID() {
        return user_ID;
    }

    public void setUser_ID(long user_ID) {
        this.user_ID = user_ID;
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

    @Override
    public String toString() {
        return "User{" + "user_ID=" + user_ID + ", firstname=" + firstname + ", lastname=" + lastname + '}' + super.toString() ;
    }
    
    
    
}
