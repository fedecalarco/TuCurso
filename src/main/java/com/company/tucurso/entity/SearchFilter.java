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
public class SearchFilter {
    
    private String seachTxt;
    private String category;
    private String pais;
    private String prov;
    private String city;

    public SearchFilter() {
    }

    public SearchFilter(String seachTxt, String category, String pais, String prov, String city) {
        this.seachTxt = seachTxt;
        this.category = category;
        this.pais = pais;
        this.prov = prov;
        this.city = city;
    }

    public String getSeachTxt() {
        return seachTxt;
    }

    public void setSeachTxt(String seachTxt) {
        this.seachTxt = seachTxt;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getProv() {
        return prov;
    }

    public void setProv(String prov) {
        this.prov = prov;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    
    
    
    
}
