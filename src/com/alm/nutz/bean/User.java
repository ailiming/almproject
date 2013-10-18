package com.alm.nutz.bean;

import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Table;

@Table("t_user")
public class User {
	
	@Id
	private long id;
	
	private String name;
	
	private String password;

	/**   
	 * 获取id   
	 * @return id id   
	 */
	public long getId() {
		return id;
	}

	/**   
	 * 设置id   
	 * @param id id   
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**   
	 * 获取name   
	 * @return name name   
	 */
	public String getName() {
		return name;
	}

	/**   
	 * 设置name   
	 * @param name name   
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**   
	 * 获取password   
	 * @return password password   
	 */
	public String getPassword() {
		return password;
	}

	/**   
	 * 设置password   
	 * @param password password   
	 */
	public void setPassword(String password) {
		this.password = password;
	}
}
