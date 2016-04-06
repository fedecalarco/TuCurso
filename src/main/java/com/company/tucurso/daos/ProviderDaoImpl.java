/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.daos;

import com.company.tucurso.entity.Provider;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

/**
 *
 * @author fedec
 */
@Transactional
@Repository("providerDaoImpl")
public class ProviderDaoImpl extends GenericDAOImpl<Provider, Long> implements ProviderDao {

    @Override
    public Provider getByEmail(String email) {

        return (Provider) currentSession().createQuery("FROM com.company.tucurso.entity.Provider WHERE email='" + email + "'").uniqueResult();

    }

}
