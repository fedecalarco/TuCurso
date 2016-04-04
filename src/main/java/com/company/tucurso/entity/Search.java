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
public class Search {
    
    private String seachTxt;
    private String location;

    public Search() {
    }

    public Search(String seachTxt, String location) {
        this.seachTxt = seachTxt;
        this.location = location;
    }

    public String getSeachTxt() {
        return seachTxt;
    }

    public void setSeachTxt(String seachTxt) {
        this.seachTxt = seachTxt;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    
    
    
}
