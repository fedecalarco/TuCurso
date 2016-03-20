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
    private String description;

    
    public Organization() {
    }

   
    public Organization(String name,String description) {
        this.name = name;
        this.description = description;
    }

    public long getOrganization_ID() {
        return organization_ID;
    }

//    public void setOrganization_ID(long organization_ID) {
//        this.organization_ID = organization_ID;
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
    
    

}
