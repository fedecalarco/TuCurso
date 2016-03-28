/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.daos;

import com.company.tucurso.entity.Course;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author fedec
 */
@Transactional
@Repository("courseDaoImpl")
public class CourseDaoImpl extends GenericDAOImpl<Course, Long> implements CourseDao {

    @Override
    public List<Course> getCourseFilter(Long categoryId) {

        List<Course> courses = new ArrayList<Course>();

        courses = currentSession().createQuery("FROM com.company.tucurso.entity.Course WHERE category.category_ID='" + categoryId + "'").list();
        //  courses = currentSession().createQuery("FROM com.company.entity.Course WHERE organization='" +  +"'");
        return courses;
    }

}
