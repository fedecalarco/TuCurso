/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.daos;

import com.company.tucurso.entity.Category;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author fedec
 */
@Transactional
@Repository("categoryDaoImpl")
public class CategoryDaoImpl extends GenericDAOImpl<Category, Long> implements CategoryDao{
    
}