<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
	<html:form action="/login">
		用户名：<html:text property="userId"></html:text>
		密码：<html:text property="password"></html:text>
		<html:submit>提交</html:submit>
	</html:form>
</html:html>
