/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.daos;

import com.company.tucurso.entity.Category;

/**
 *
 * @author fedec
 */
public interface CategoryDao extends GenericDAO<Category, Long>{
    public Category getCategoryByName(String category);
}
