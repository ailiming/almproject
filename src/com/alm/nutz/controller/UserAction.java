package com.alm.nutz.controller;

import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;

import com.alm.nutz.bean.User;
import com.alm.nutz.manager.UserManager;


@IocBean
@At("/user")
public class UserAction {
	
	private static final Log log = Logs.get();
	
	@Inject
	private UserManager userManager;
	
	
	
	@At("/list")
	public Object regist(User user ,HttpServletRequest request){
		
		userManager.save(user);
		return null;
	}

}
