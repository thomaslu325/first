package com.dongyatu.struts2.ognl;

public class User {
	
	private String name;
	
	private int age;
	
	public User(int i){
		this.setAge(i);
	}
	
	@Override
	public String toString() {
		return "user:"+age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	} 
}
