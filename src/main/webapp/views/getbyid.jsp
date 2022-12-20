<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center" style="background-color:#e6f5ff;">
<h1>GetDataUsingId</h1>
	<form action="${pageContext.request.contextPath} /bank/savebee"
		method="post">
		<input type="number"  min="0" name="bid"> 
		<input type="submit">
	</form>


</body>
</html>