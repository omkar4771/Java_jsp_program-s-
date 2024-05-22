<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html><body>

<% 
int ano,bal;
String type,name;
ano=Integer.parseInt(request.getParameter("ano"));
type=request.getParameter("type");
bal=Integer.parseInt(request.getParameter("bal"));
name=request.getParameter("nm");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/batch7","root","");

PreparedStatement s=cn.prepareStatement("insert into Account values(?,?,?,?)");
s.setInt(1,ano);
s.setString(2,type);
s.setInt(3,bal);
s.setString(4,name);
s.executeUpdate();
out.println("Record is saved");
Statement st=cn.createStatement();
ResultSet rs=st.executeQuery("Select * from account");
out.println("<table border=1>");
while(rs.next())
{
	out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getFloat(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
}
out.println("</table>");
cn.close();
}
catch(Exception e)
{
out.println(e);
}
%>
</body></html>