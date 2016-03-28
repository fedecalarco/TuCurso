/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.service;

import com.company.tucurso.entity.Course;
import com.company.tucurso.entity.Organization;
import java.util.List;

/**
 *
 * @author fedec
 */
public interface OrganizationService extends GenericService<Organization, Long>{
    
    List<Course> getCourses(Long courseId);
}
