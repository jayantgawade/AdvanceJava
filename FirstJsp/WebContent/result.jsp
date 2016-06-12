<%@page import="com.first.Person"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Using Scriptlet</h1>
<% Person p =(Person) request.getAttribute("person");%>
Person is <%=p.getPname() %>

<h1>No Scripting</h1>
<hr />
1) property = property of the Bean here Person class' property <BR />
<hr />
2) jsp:useBean id= name of the attribute set in the Request i.e request.setAttribute
<hr />
3) jsp:useBean id and jsp:getProperty must mach
<hr />
<BR />
<jsp:useBean id="person" class="com.first.Person" scope="request"/>
Person Created By Servlet is : <jsp:getProperty property="pname" name="person"/>

</body>
</html>