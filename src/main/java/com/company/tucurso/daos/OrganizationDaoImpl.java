/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.daos;

import com.company.tucurso.entity.Course;
import com.company.tucurso.entity.Organization;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author fedec
 */
@Transactional
@Repository("organizationDaoImpl")
public class OrganizationDaoImpl extends GenericDAOImpl<Organization, Long> implements OrganizationDao {

    @Override
    public List<Course> getCourses(Long id) {

        // return (User) getCurrentSession().createQuery("FROM com.banco.model.User WHERE username='" + username + "'").uniqueResult();
        List<Course> courses = new ArrayList<Course>();

        courses = currentSession().createQuery("FROM com.company.tucurso.entity.Course WHERE organization.organization_ID='"+id+"'").list();
        //  courses = currentSession().createQuery("FROM com.company.entity.Course WHERE organization='" +  +"'");
        return courses;
    }

}
