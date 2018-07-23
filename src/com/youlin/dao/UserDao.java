package com.youlin.dao;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.opensymphony.xwork2.ActionContext;
import com.youlin.domain.User;

public class UserDao extends HibernateDaoSupport {
public User login(User user){
	User userlogin=null;
	String hql = "from User where username =? and password =?";
	List<User> list = this.getHibernateTemplate().find(hql,user.getUsername(),user.getPassword());
	if(null!=list&&list.size()>0){
		userlogin = list.get(0);
		String hql1 = "from Product";
		List<User> list1 = this.getHibernateTemplate().find(hql1);
		ActionContext.getContext().getSession().put("listproduct", list1);
	}
	return userlogin;
}


public String register(User user) {
	// TODO Auto-generated method stub
	this.getHibernateTemplate().save(user);
	
	String hql = "from User where phonenubmer =?";
	List<User> list = this.getHibernateTemplate().find(hql,user.getPhonenubmer());
	if(null!=list&&list.size()>0){
		return "registersuccess";
	}else{
	    return "registererror";}
}
}
