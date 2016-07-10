<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<bean:define id="user" value="zhangsan" type="java.lang.String"></bean:define>
    <bean:define id="s" name="str" type="java.lang.String" ></bean:define>
    <bean:define id="persondto" name="person" type="org.javachina.tag.dto.PersonDto"></bean:define>
	<bean:define id="pid" name="person" type="Integer" property="id"></bean:define>
	<bean:define id="pname" name="person" type="String" property="name"></bean:define>
	<bean:define id="birth" name="person" type="java.sql.Date" property="birth"></bean:define>
	<bean:define id="id1" name="persondto" property="id"></bean:define>
	<bean:define id="name1" name="persondto" property="name"></bean:define>
	<bean:define id="bith1" name="persondto" property="birth" type="java.sql.Date"></bean:define>
	<bean:define id="lis" name="list" type="java.util.ArrayList"></bean:define>
	<bean:write name="bith1"  format="yyyy-MM-dd"/> <!-- 日期类型须指定format否则可能会出错 -->
	<bean:write name="person" property="id" format="#"/><!--int指定须指定format #号代表数字，如果是小数则可自定义形如###，###.## -->
	<bean:write name="person" property="name"/>
	<bean:write name="person" property="birth" format="yyyy/MM/dd"/>
	<%
	 //String s1 =(String)request.getAttribute("str");
	// out.print("request.getattribute方式获得："+s1);
//	 out.print("标签获得"+user);
	 //out.print("personId"+persondto.getId()+"personName"+persondto.getName()+"birth"+persondto.getBirth());
//	out.print(bith1);
//	out.print(name1);
//	out.print(id1);
//	out.print(lis);
	%>
</body>
</html>