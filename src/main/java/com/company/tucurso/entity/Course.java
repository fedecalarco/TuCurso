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
public class Course {
    
    private long couse_ID;
    private String name;
    private Category category;
    private Provider provider;
    private String description;
    private double price;
    private String duration;
    private String date;   // Fecha de inicio del curso
    private String location;

    public Course() {
    }

    public Course(String name, Category category, Provider provider, String description, double price, String duration, String date, String location) {
        this.name = name;
        this.category = category;
        this.provider = provider;
        this.description = description;
        this.price = price;
        this.duration = duration;
        this.date = date;
        this.location = location;
    }

    public long getCouse_ID() {
        return couse_ID;
    }

//    public void setCouse_ID(long couse_ID) {
//        this.couse_ID = couse_ID;
//    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Provider getProvider() {
        return provider;
    }

    public void setProvider(Provider provider) {
        this.provider = provider;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    
    
    
    
}
