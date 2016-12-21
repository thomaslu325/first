package com.dongyatu.struts2.ognl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.opensymphony.xwork2.ActionSupport;

public class OGNLAction extends ActionSupport {
	public String password;
	
	public String username;
	
	public User user ;
	
	private Cat cat;
	
	public List<User> users=new ArrayList<User>();
	
	public Set<Dog> dogs=new HashSet<Dog>();
	
	public Map<String,Dog> dogMap=new HashMap<String,Dog>();
	
	public OGNLAction(){
		users.add(new User(1));
		users.add(new User(2));
		users.add(new User(3));
		
		dogs.add(new Dog("dog1"));
		dogs.add(new Dog("dog2"));
		dogs.add(new Dog("dog3"));
		
		dogMap.put("dog100", new Dog("dog100"));
		dogMap.put("dog101", new Dog("dog101"));
		dogMap.put("dog102", new Dog("dog102"));
		
	}

	public String execute(){
		return SUCCESS;
	}
	
	public String m(){
		return "hello";
	}
	
	public static String s(){
		return "static";
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Cat getCat() {
		return cat;
	}

	public void setCat(Cat cat) {
		this.cat = cat;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public Set<Dog> getDogs() {
		return dogs;
	}

	public void setDogs(Set<Dog> dogs) {
		this.dogs = dogs;
	}

	public Map<String, Dog> getDogMap() {
		return dogMap;
	}

	public void setDogMap(Map<String, Dog> dogMap) {
		this.dogMap = dogMap;
	}
	
	
}
