package com.alm.nutz;

import java.util.List;

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
		List<Class<?>> cls = Scans.me().scanPackage("com.alm.nutz.bean");
		for(Class<?> bean : cls){
			Table table = (Table) bean.getAnnotation(Table.class);
			if(table!=null){
				dao.create(bean, false);
			}
		}
	}

	@Override
	public void destroy(NutConfig config) {
		// TODO Auto-generated method stub
		
	}

}
