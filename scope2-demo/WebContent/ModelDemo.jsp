<%@page import="in.cdac.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%
	int id= (Integer)request.getAttribute("ID");
	ArrayList<Integer> idList= (ArrayList)request.getAttribute("IDLIST");
	
	String cityName= (String)request.getAttribute("CITYNAME");
	ArrayList<String> cityList= (ArrayList)request.getAttribute("CITYLIST");
	
	User user= (User)request.getAttribute("USER");
	ArrayList<User> userList= (ArrayList)request.getAttribute("USERLIST");
	
	
%>

<body>
	<h1>DATA TYPE NUMBER Demo</h1>
	ID: <%= id %>
	
	<% for (int id1: idList) {%>
	 <p> From List:<%= id1 %></p>
	<% } %>
	
	<h1> DATA TYPE NUMBER Demo</h1>
	CITYNAME: <%= cityName %>
	
	<% for(String cityName1: cityList) { %>
		<p>From Citylist: <%= cityName1 %> </p>
	<% } %>
	
	<h1> User Defined Data </h1>
	<p>USER: <%= user.getId() %> :: <%= user.getName() %></p>
	
	<% for(User user1: userList) { %>
		<p>From list: <%= user1.getId() %>:: <%=user1.getName() %> </p>
	<% } %>
	
		
	
</body>
</html>