/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.entity;

/**
 *
 * @author fedec
 */
public class Provider extends Customer {

    private long provider_ID;
    private String name;
    private String description;
    private String webpage;

   
    public Provider(String name, String description, String county, String province, String city, String phone, String user, String password, String email) {
        super(county, province, city, phone, user, password, email);
        this.name = name;
        this.description = description;
    }

    public long getProvider_ID() {
        return provider_ID;
    }

//    public void setProvider_ID(long provider_ID) {
//        this.provider_ID = provider_ID;
//    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getWebpage() {
        return webpage;
    }

    public void setWebpage(String webpage) {
        this.webpage = webpage;
    }

}
