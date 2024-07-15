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

String balance="select * from bank where id="+DB.currentid;
ResultSet rs = DB.st.executeQuery(balance);
if(rs.next()){
	out.println("Your balance is:"+rs.getInt(3));
}

%>

</body>
</html>