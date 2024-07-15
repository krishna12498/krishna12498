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

int i=0;
int id = Integer.parseInt(request.getParameter("id"));
int pin = Integer.parseInt(request.getParameter("pin"));

String balance="select * from bank where id="+id;
ResultSet rs = DB.st.executeQuery(balance);
if(rs.next()){
	i=rs.getInt(2);
}



if(pin==i){
	DB.currentid=id;
	response.sendRedirect("Home.html");
}else{
	out.println("Incorrect Password"+pin);
}


%>
</body>
</html>