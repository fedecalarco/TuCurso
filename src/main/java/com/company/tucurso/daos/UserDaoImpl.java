/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.tucurso.daos;

import com.company.tucurso.entity.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author fede
 */
@Transactional
@Repository("userDaoImpl")
public class UserDaoImpl extends GenericDAOImpl<User, Long> implements UserDao{

}
