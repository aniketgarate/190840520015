<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%
	session.setAttribute("count", 1);
	session.setAttribute("name", "cdac-juhu");
%>

<%
	int count= (Integer)session.getAttribute("count");
	String name= (String)session.getAttribute("name");
%>

<body>
	session page name:: <%= name %>
	session page count:: <%= count %>
</body>
</html>