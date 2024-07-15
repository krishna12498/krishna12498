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

int idT = Integer.parseInt(request.getParameter("T"));
int amt = Integer.parseInt(request.getParameter("amt"));

int cur=0;
String q="select * from bank where id="+DB.currentid;
ResultSet rs = DB.st.executeQuery(q);
if(rs.next()){
	cur=rs.getInt(3);
}

if (cur>amt){
	cur-=amt;
	String up = "update bank set balance="+cur+" where id="+DB.currentid;
	DB.st.executeUpdate(up);
}else{
	out.println("Insufficent Balance");
}


int cur2=0;
String q1="select * from bank where id="+idT;
ResultSet rs1 = DB.st.executeQuery(q1);
if(rs1.next()){
	cur2=rs1.getInt(3);
}
	cur2+=amt;
	String up = "update bank set balance="+cur2+" where id="+idT;
	if (DB.st.executeUpdate(up)>0){
		out.println("Transfer Is Success");
	}


%>
</body>
</html>