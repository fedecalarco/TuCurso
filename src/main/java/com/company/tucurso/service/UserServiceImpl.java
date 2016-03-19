/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.service;

import com.company.tucurso.daos.GenericDAO;
import com.company.tucurso.daos.UserDao;
import com.company.tucurso.entity.User;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 *
 * @author fede
 */
@Service
@Transactional
public class UserServiceImpl extends GenericServiceImpl<User, Long> implements UserService {

private UserDao userDao;
public UserServiceImpl(){  
}
public UserServiceImpl(@Qualifier("userDaoImpl")GenericDAO<User, Long> genericDao){
    super(genericDao);
    this.userDao = (UserDao) genericDao;
}

}
