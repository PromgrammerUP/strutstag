<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<bean:define id="strs" name="list" type="java.util.ArrayList"></bean:define>
	<logic:iterate id="strItem" name="strs" indexId="i">
	<bean:write name="i" format="#"/><bean:write name="strItem"/><br>
	</logic:iterate>
	<bean:define id="i" value="1"></bean:define>
	<logic:equal value="0" name="i">
		equal匹配
	</logic:equal>
	<logic:notEqual value="0" name="i">
		notEqual不匹配
	</logic:notEqual><br>
	<bean:define id="ss" value="abcd"></bean:define>
	<logic:match value="c" name="ss">
		match匹配
	</logic:match>
	<logic:notMatch value="c" name="ss">
		notMatch不匹配
	</logic:notMatch>
	<br>
	<%// <logic:empty name="actor" scope="session">
		//<logic:forward name="goto2"/>
		//<logic:redirect name="" />
	//</logic:empty>
	//<logic:notEmpty>
	//</logic:notEmpty>
	%>
	
	<logic:present name="list" scope="request">
		list存在
	</logic:present>
	<logic:notPresent name="list1" scope="request">
		list1不存在
	</logic:notPresent>
</body>
</html>