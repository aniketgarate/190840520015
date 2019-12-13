<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%
	request.setAttribute("count", 1);
	request.setAttribute("name", "cdac-juhu");
%>

<%
	int count= (Integer)request.getAttribute("count");
	String name= (String)request.getAttribute("name");
%>

<body>
	Count:: <%= count %>
	Name:: <%=name %>
</body>
</html>