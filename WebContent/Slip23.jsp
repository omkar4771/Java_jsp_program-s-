<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int rno = Integer.parseInt(request.getParameter("rno"));
String s_name = request.getParameter("name");
String s_gender = request.getParameter("gender");
String s_know = request.getParameter("know");
String s_class = request.getParameter("Class");
out.println("<br>Roll No :"+rno);
out.println("<br>Name :"+s_name);
out.println("<br>Gender :"+s_gender);
out.println("<br>Comp_Know :"+s_know);
out.println("<br>Class :"+s_class);
%>