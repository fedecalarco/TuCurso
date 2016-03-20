/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 *
 * @author fedec
 */
@Entity
public class Organization implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long organization_ID;
    private String name;
//    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
//    private List<Course> courses = new ArrayList<Course>();

    public Organization() {
    }

   
    public Organization(String name) {
        this.name = name;
    }

    public long getOrganization_ID() {
        return organization_ID;
    }

    public void setOrganization_ID(long organization_ID) {
        this.organization_ID = organization_ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

//    public List<Course> getCourses() {
//        return courses;
//    }
//
//    public void setCourses(List<Course> courses) {
//        this.courses = courses;
//    }
//
//    public void addCourse(Course course){
//        this.courses.add(course);
//    }


}
