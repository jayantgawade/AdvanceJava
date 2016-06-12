<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Tag Example </title></head>
<body>
Setting only String Variable <br>
<c:set var="salary" scope="session" value="${2000*2}"/>
<c:out value="${salary}"/>
<br>
<hr>
<jsp:useBean id="employee" scope="session" class="jsp6.Employee"/>

Setting value in a bean using target property <br>
<c:set var="employeeSalary" scope="session" value="$1000.00" target="${employee}" property="salary"/>
<c:out value="${employeeSalary}"/>

</body>
</html>