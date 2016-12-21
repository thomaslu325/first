<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OGNL表达式语言学习</title>
</head>
<body>
<ol>
	<li>访问值栈中的action的普通属性：username=<s:property value="username" /></li>
	<li>访问值栈中的对象的普通属性：（get set 方法）：<s:property value="user.age" /></li>
	<li>访问值栈中的对象的普通属性：（get set 方法）：<s:property value="cat.friend.name" /></li>
	<li>访问值栈中的对象的普通方法：（普通方法）：<s:property value="m()" /></li>
	<li>访问静态方法：<s:property value="@com.dongyatu.struts2.ognl.s@r()" /></li>
	<li>访问静态属性：<s:property value="@com.dongyatu.struts2.ognl.s@str" /></li>
	 
	<li>访问list：<s:property value="users" /></li>
	<li>访问list中的某个元素：<s:property value="users[1]" /></li>
	<li>访问list中的某个元素的集合：<s:property value="users.{age}" /></li>
	<li>访问list中的某个元素的集合：<s:property value="users.{name}" /></li>
	<li>访问list中的某个元素的集合：${users[1].age}</li>
	
	
	<li>访问set：<s:property value="dogs" /></li>
	<li>访问set中的某个元素：<s:property value="dogs[1]" /></li>
	<li>访问set中的某个元素的集合：<s:property value="dogs.{name}" /></li>
	
	<li>投影：<s:property value="users.{?#this.age==1}[0]" /></li>
	<li>投影：<s:property value="users.{^#this.age>1}"  /></li> 
	<li>投影：<s:property value="users.{$#this.age>1}"  /></li>  
</ol>
<s:debug></s:debug>
</body>
</html>