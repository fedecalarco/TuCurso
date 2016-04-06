/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.entity;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

/**
 *
 * @author fedec
 */
@Entity
public class Provider extends Account {

    private String nameOrganization;
    @OneToOne(cascade = {CascadeType.ALL})
    private Organization organizationProfile;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Course> courses = new ArrayList<Course>();

    public Provider() {
    }

    public Provider(String email, String password, String nameOrganization, Organization organizationProfile) {
        super(email, password);
        this.nameOrganization = nameOrganization;
        this.organizationProfile = organizationProfile;
    }
    

    public String getNameOrganization() {
        return nameOrganization;
    }

    public void setNameOrganization(String nameOrganization) {
        this.nameOrganization = nameOrganization;
    }

    public Organization getOrganizationProfile() {
        return organizationProfile;
    }

    public void setOrganizationProfile(Organization organizationProfile) {
        this.organizationProfile = organizationProfile;
    }

    public List<Course> getCourses() {
        return courses;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }

}
