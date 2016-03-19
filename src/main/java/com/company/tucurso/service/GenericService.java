/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.service;

import java.util.List;


public interface GenericService<E, K> {

    public void saveOrUpdate(E entity);

    public List<E> getAll();

    public E get(K id);

    public void add(E entity);

    public void update(E entity);

    public void remove(E entity);
}