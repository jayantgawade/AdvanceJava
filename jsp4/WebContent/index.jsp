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
<c:forEach var="listElement" items="${movieList}" varStatus="loopCount">
<c:forEach var="movie" items="${listElement}" varStatus="loopCount1" >
		<table>
			<tr>
				<td>${loopCount.count}</td>
			</tr>
			<tr>
				<td>${loopCount1.count}</td>
			</tr>
			<tr>
				<td>${movie}</td>
			</tr>
		</table>
	</c:forEach>
</c:forEach>

</body>
</html>