package com.alm.nutz.manager;

import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.service.EntityService;

import com.alm.nutz.bean.User;
import com.alm.nutz.dao.UserDao;


public class UserManager extends EntityService<User> {
	
	@Inject
	private UserDao userDao;
	
	
	public void save(User user){
		userDao.save(user);
	}
	



}
