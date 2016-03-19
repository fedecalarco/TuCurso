/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.service;

import com.company.tucurso.daos.CourseDao;
import com.company.tucurso.daos.GenericDAO;
import com.company.tucurso.entity.Course;
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
public class CourseServiceImpl extends GenericServiceImpl<Course, Long> implements CourseService {

private CourseDao courseDao;
public CourseServiceImpl(){  
}
@Autowired
public CourseServiceImpl(@Qualifier("courseDaoImpl")GenericDAO<Course, Long> genericDao){
    super(genericDao);
    this.courseDao = (CourseDao) genericDao;
}

}