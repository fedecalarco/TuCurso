/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.service;

import com.company.tucurso.daos.CourseDao;
import com.company.tucurso.daos.GenericDAO;
import com.company.tucurso.entity.Course;
import com.company.tucurso.entity.Search;
import com.company.tucurso.entity.SearchFilter;
import java.util.List;
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

    public CourseServiceImpl() {
    }

    @Autowired
    public CourseServiceImpl(@Qualifier("courseDaoImpl") GenericDAO<Course, Long> genericDao) {
        super(genericDao);
        this.courseDao = (CourseDao) genericDao;
    }

    @Override
    public List getCourseFilter(Search searchFilter) {


//        if ("Otra".equals(searchFilter.getCity()) || searchFilter.getCity() == null) {
//            searchFilter.setCity("");
//        }
//
//        if ("-".equals(searchFilter.getPais())) {
//            searchFilter.setPais("");
//        }
//
//        if ("-".equals(searchFilter.getProv()) || searchFilter.getProv() == null) {
//            searchFilter.setProv("");
//        }
        
//        if(searchFilter.getLocation() == null){
//            searchFilter.setLocation("");
//        }
        
        System.out.println("txtSeach: " + searchFilter.getSeachTxt());
        System.out.println("Location: " + searchFilter.getLocation());

        if (searchFilter.getSeachTxt() != null && searchFilter.getLocation() != null) {
            System.out.println("FILTRO 1 OK");
            
            
            return courseDao.getCourseFilter(searchFilter.getSeachTxt(), searchFilter.getLocation());

        } else {
            System.out.println("FILTRO 1 FAIL");
            return courseDao.getAll();
        }

    }

}
