/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.entity;

import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author fedec
 */
public class Category {
    
    private long category_ID;
    private String name;
    private List<Course> courses = new LinkedList<Course>();

    public long getCategory_ID() {
        return category_ID;
    }

//    public void setCategory_ID(long category_ID) {
//        this.category_ID = category_ID;
//    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Course> getCourses() {
        return courses;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }
    
    
    
}
