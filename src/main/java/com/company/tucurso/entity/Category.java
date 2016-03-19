package com.company.tucurso.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author fedec
 */
@Entity
public class Category implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long category_ID;
    private String name;

    public Category(String name) {
        this.name = name;
    }

    public Category() {
    }

    
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

}
