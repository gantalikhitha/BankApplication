<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center" style="background-color:#e6f5ff;">
<h1 >GetData</h1>
<form action="${pageContext.request.contextPath} /child/getchild"method="post">
<input type="text" name="name">
<input type="submit" name="save">
</form>

</body>
</html>