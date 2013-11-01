package com.alm.nutz.controller;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;


@IocBean
@At("/admin")
public class MainAction {
	
	private static final Log log = Logs.get();
	
	
	@At
	@Ok("jsp:main")
	public void main(){
		System.out.println("333");
		
	}

}
