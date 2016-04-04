/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.daos;

import com.company.tucurso.entity.Course;
import java.util.List;

/**
 *
 * @author fedec
 */
public interface CourseDao extends GenericDAO<Course, Long>{
    public List<Course> getCourseFilter(String searchTxt, String location);
}
