/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.service;

import com.company.tucurso.daos.CategoryDao;
import com.company.tucurso.daos.GenericDAO;
import com.company.tucurso.entity.Category;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 *
 * @author fedec
 */

@Service
@Transactional
public class CategoryServiceImpl extends GenericServiceImpl<Category, Long> implements CategoryService{
    
    private CategoryDao categoryDao;
    
    public CategoryServiceImpl(){
        
    }
    @Autowired
    public CategoryServiceImpl(@Qualifier("categoryDaoImpl")GenericDAO<Category, Long> genericDao){
        super(genericDao);
        this.categoryDao = (CategoryDao) genericDao;
    }
}
