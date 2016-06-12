<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="Header.jsp">
<c:param name="title" value="Calling Page"/>
</c:import>

<hr>
	<c:set var="userStatus" scope="request" value="Brilliant" />
	User Status : ${userStatus}
	<br>
	
	<br>
	<c:remove var="userStatus" scope="request"/>
	
	User Status is now: ${userStatus}
	
	<hr>importing another web URL</hr>
	<br>
	<br>
	
	<c:import url="https://www.google.co.in/"></c:import>
</body>
</html>