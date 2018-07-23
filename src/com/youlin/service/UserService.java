package com.youlin.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.youlin.dao.UserDao;
import com.youlin.domain.User;

@Transactional
public class UserService {
private UserDao userDao;	
public void setUserDao(UserDao userDao) {
	this.userDao = userDao;
}
public User login(User user){
	return userDao.login(user);
}
public String register(User user) {
	// TODO Auto-generated method stub
	return userDao.register(user);
}	
}
