<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%@ page import="p1.DB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
DB.connect();

int id = Integer.parseInt(request.getParameter("id"));
int pin = Integer.parseInt(request.getParameter("pin"));

String name = request.getParameter("name");
int bal = Integer.parseInt(request.getParameter("balance"));

String in = "insert into bank values('"+name+"', "+pin+","+bal+","+id+")";

if(DB.st.executeUpdate(in)>0){
	out.println("Account Created");
}


%>
</body>
</html>