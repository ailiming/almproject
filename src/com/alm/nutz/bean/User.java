package com.alm.nutz.bean;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Table;

@Table("t_user")
public class User {
	
	@Id
	private long id;
	
	/**
	 * 姓名
	 */
	@Column
	private String name;
	
	/**
	 * 用户名
	 */
	@Column
	private String username;
	
	/**
	 * 密码
	 */
	@Column
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
	 * 获取姓名   
	 * @return name 姓名   
	 */
	public String getName() {
		return name;
	}

	/**   
	 * 设置姓名   
	 * @param name 姓名   
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**   
	 * 获取用户名   
	 * @return username 用户名   
	 */
	public String getUsername() {
		return username;
	}

	/**   
	 * 设置用户名   
	 * @param username 用户名   
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**   
	 * 获取密码   
	 * @return password 密码   
	 */
	public String getPassword() {
		return password;
	}

	/**   
	 * 设置密码   
	 * @param password 密码   
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
}
