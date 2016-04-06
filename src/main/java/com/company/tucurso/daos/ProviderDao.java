/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.daos;

import com.company.tucurso.entity.Provider;

/**
 *
 * @author fedec
 */
public interface ProviderDao extends GenericDAO<Provider, Long>  {
    public Provider getByEmail(String email);
}
