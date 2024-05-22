<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1,s2,s3,s4,s5,s6,s7,s8;
s1=(request.getParameter("Name"));
s2=(request.getParameter("address"));
s3=(request.getParameter("email"));
s4=(request.getParameter("pass"));
s5=(request.getParameter("gender"));
s6=(request.getParameter("date_of_birth"));




out.println("<br>Name="+s1);
out.println(s2);
out.println(s3);
out.println(s4);
out.println(s5);
out.println(s6);

%>
</body>
</html>