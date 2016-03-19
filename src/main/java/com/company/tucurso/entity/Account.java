/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

/**
 *
 * @author fede
 */
@Entity
// 3 formas de hacer InheritanceType: SINGLE_TABLE (Tabla unica) - JOINED (Una tabla para cada subclase) - TABLE_PER_CLASS (Una tabla por clase concreta)
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public abstract class Account implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long customer_ID;
    private String user;
    private String password;
    private String email;

    public Account() {
    }

    public Account(String user, String password, String email) {
        this.user = user;
        this.password = password;
        this.email = email;
    }

    public long getCustomer_ID() {
        return customer_ID;
    }

//    public void setCustomer_ID(long customer_ID) {
//        this.customer_ID = customer_ID;
//    }
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
