/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.service;

import com.company.tucurso.daos.GenericDAO;
import com.company.tucurso.daos.ProviderDao;
import com.company.tucurso.entity.Provider;
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
public class ProviderServiceImpl extends GenericServiceImpl<Provider, Long> implements ProviderService  {
    private ProviderDao providerDao;
public ProviderServiceImpl(){  
}
@Autowired
public ProviderServiceImpl(@Qualifier("providerDaoImpl")GenericDAO<Provider, Long> genericDao){
    super(genericDao);
    this.providerDao = (ProviderDao) genericDao;
}

    @Override
    public Provider getByEmail(String email) {
        return providerDao.getByEmail(email);
    
    }

}
