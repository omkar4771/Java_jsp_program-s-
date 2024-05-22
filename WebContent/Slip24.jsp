<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String email = request.getParameter("email");
boolean v = false;
v = email.matches("^[-0-9a-zA-Z.+_]+@[-0-9a-zA-Z.+_]+\\.[a-zA-Z]{2,4}");
if(v == true)
{
out.println("\nValid Mail");
}
else
{
out.println("\nInvalid email id");
}
%>