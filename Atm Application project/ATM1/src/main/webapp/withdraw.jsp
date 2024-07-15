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
int amt = Integer.parseInt(request.getParameter("t2"));
int cur=0;
String q="select * from bank where id="+DB.currentid;
ResultSet rs = DB.st.executeQuery(q);
if(rs.next()){
	cur=rs.getInt(3);
}
if (cur>amt){
	cur-=amt;
	String up = "update bank set balance="+cur+" where id="+DB.currentid;
	if (DB.st.executeUpdate(up)>0){
		out.println("WithDraw Is Sucess");
	}else{
		out.println("WithDraw Is Failed");
	}
}else{
	out.println("Insufficent Balance");
}

%>
</body>
</html>