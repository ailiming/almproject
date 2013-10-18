package com.alm.nutz;

import org.nutz.dao.Dao;
import org.nutz.dao.entity.annotation.Table;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.NutConfig;
import org.nutz.mvc.Setup;
import org.nutz.resource.Scans;

public class NutzSetup implements Setup {
	
	private static final Log Log = Logs.get();

	@Override
	public void init(NutConfig config) {
		Log.debug("config ioc=" + config.getIoc());
		
		Dao dao = config.getIoc().get(Dao.class);
		for (Class<?> klass : Scans.me().scanPackage("com.alm.nutz")) {
			if(klass.getAnnotation(Table.class) != null){
				dao.create(klass, false);
			}
		}
		
	}

	@Override
	public void destroy(NutConfig config) {
		// TODO Auto-generated method stub
		
	}

}
