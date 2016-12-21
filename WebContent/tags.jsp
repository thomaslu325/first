<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Struts2-tags学习</title>
</head>
<body>
<ol>
	<li>property<s:property value="username" /></li>
	<li>property<s:property value="'user.age'" /></li>
	<li>property默认值<s:property value="name" default="管理员"/></li>
	<li>property设定HTML<s:property value="'<hr/>'" escapeHtml="false" /></li>
	
	
	<li>set 设定adminname值（默认为actionContext和request）<s:set var="adminName" value="username"></s:set></li>
	<li>获取set request的值：<s:property value="#request.adminName" /></li>
	<li>获取set actionContext的值：<s:property value="#adminName" /></li>
	 
	<li>set 设定范围<s:set var="adminPassword" value="password" scope="page"></s:set></li>
	<li>set 从相应范围取值：<%=pageContext.getAttribute("adminPassword") %></li>
	<li>set 设定var 范围为ActionContext：<s:set value="password" var="a" scope="session" /></li>
	<li>#取值<s:property value="#a"/></li>
	<li>从相应范围#取值<s:property value="#session.a"/></li>

	<li>bean对象
	</li>
	<li>bean对象mydog
	<s:bean name="com.dongyatu.struts2.ognl.Dog" var="mydog">
		<s:param name="name" value="'dagou'"></s:param>
	</s:bean>||
	<s:property value="#mydog.name"/>
	</li>
	<li>includ:_includel1.jsp包含静态英文文件<s:include value="/_include1.jsp"></s:include></li>
	<li>includ:_includel2.jsp包含静态中文文件<s:include value="/_include2.jsp"></s:include></li>
	<li>includ:_includel1.jsp包含静态英文文件，说明%用法
	<s:set var="incPage" value="'/_include1.jsp'"></s:set>
	<s:include value="%{#incPage}"></s:include></li>
	
	<li><s:fielderror name="fielderror.test" theme="simple"></s:fielderror></li>

	<li>if else if else: age=<s:property value="%{#parameters.age}"/> 
		<br>
		<s:if test="#age<0">wrong age!</s:if>
		<s:elseif test="#age<20">too young!</s:elseif>
		<s:else>yeah!</s:else>
	</li>
	
	<li>便利iterator
		<s:iterator value="{1,2,3}"> 
			<s:property/>
		</s:iterator>
	</li>
	<li>自定义变量
		<s:iterator value="{'aaa','bbb','ccc'}" var="x">
			<s:property  value="#x.toUpperCase()"/>
		</s:iterator>
	</li>
	<li>使用status：
		<s:iterator value="{'aaa','bbb','ccc'}" status="status">
			<s:property  value="#x.toUpperCase()"/>
			遍历过的元素总数：<s:property value="#status.count"/>
			遍历过的索引值：<s:property value="#status.index"/>
			当前的是否偶数：<s:property value="#status.even"/>
			当前的是否奇数：<s:property value="#status.odd"/>
			当前是不是第一个元素：<s:property value="#status.first"/>
			当前是不是最后一个元素：<s:property value="#status.last"/>
			<br>
		</s:iterator>
	</li>
	<li>遍历一个map
		<s:iterator value="#{1:'a',2:'b',3:'c'}">
			<s:property value="key"/>|<s:property value="value"/>
		</s:iterator>
	</li>
	<li>遍历一个map
		<s:iterator value="#{1:'a',2:'b',3:'c'}" var="x">
			<s:property value="#x.key"/>|<s:property value="#x.value"/>
		</s:iterator>
	</li>
</ol>
<s:debug></s:debug>
</body>
</html>