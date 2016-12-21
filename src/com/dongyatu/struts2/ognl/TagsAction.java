package com.dongyatu.struts2.ognl;

import com.opensymphony.xwork2.ActionSupport;

public class TagsAction  extends ActionSupport{

	private String username;
	
	private String password;
	
	private int age;
	
	private User user;
	
	public String execute(){
		this.addFieldError("fielderror.test", "wrong!");
		return SUCCESS;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}	
	
}
