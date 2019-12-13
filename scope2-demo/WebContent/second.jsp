<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>


<%
	int count= (Integer)session.getAttribute("count");
	String name= (String)session.getAttribute("name");
%>



<body>
	The name at second page is <%= name %>
	The count at second page is <%=count %>
</body>
</html>