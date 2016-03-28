/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.service;

import com.company.tucurso.entity.Category;

/**
 *
 * @author fedec
 */
public interface CategoryService extends GenericService<Category, Long> {
    public Category getCategoryByName(String category);
}
