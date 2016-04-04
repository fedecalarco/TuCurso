/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.service;

import com.company.tucurso.entity.Course;
import com.company.tucurso.entity.Search;
import com.company.tucurso.entity.SearchFilter;
import java.util.List;

/**
 *
 * @author fedec
 */
public interface CourseService extends GenericService<Course, Long>{
    public List getCourseFilter(Search searchFilter);

}
