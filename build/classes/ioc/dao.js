var ioc = {
	dataSource : {
		type :"org.apache.commons.dbcp.BasicDataSource",
		events : {
			depose :"close"
		},
		fields : {
			driverClassName : 'org.h2.Driver',
			url             : 'jdbc:h2:my_nutz_dwz'
		}
	},
    dao : {
        type : "org.nutz.dao.impl.NutDao",
        fields : {
        	args : [{refer : 'dataSource'}]
        }
    }
};