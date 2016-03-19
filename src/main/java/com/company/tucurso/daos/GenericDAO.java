/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.daos;

import java.util.List;

/**
 *
 * @author fede
 */
public interface GenericDAO<E, K> {

    public void add(E entity);

    public void saveOrUpdate(E entity);

    public void update(E entity);

    public void remove(E entity);

    public E find(K key);

    public List<E> getAll();
}
