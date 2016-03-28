/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.service;

import com.company.tucurso.daos.GenericDAO;
import com.company.tucurso.daos.OrganizationDao;
import com.company.tucurso.entity.Course;
import com.company.tucurso.entity.Organization;
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
public class OrganizationServiceImpl extends GenericServiceImpl<Organization, Long> implements OrganizationService {

    private OrganizationDao organizationDao;

    public OrganizationServiceImpl() {
    }

    @Autowired
    public OrganizationServiceImpl(@Qualifier("organizationDaoImpl") GenericDAO<Organization, Long> genericDao) {
        super(genericDao);
        this.organizationDao = (OrganizationDao) genericDao;
    }
    
    @Override
    public List<Course> getCourses(Long courseId){
      
        return organizationDao.getCourses(courseId);
        
    }
}
