<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import ="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>account1 JDBC Connection</title>
</head>
<body>
<%
int Acno,Balance,ch;
String Actype;
Acno=Integer.parseInt(request.getParameter("ano"));
Actype=request.getParameter("type");
Balance=Integer.parseInt(request.getParameter("bal"));
ch=Integer.parseInt(request.getParameter("choice"));

int k;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/batch7","root","");
Statement st=con.createStatement();
ResultSet rs;
switch(ch)
{

case 1:
String s="insert into account1 values("+Acno+",'"+Actype+"',"+Balance+")";
k=st.executeUpdate(s);
if(k>0)
{
	out.println("record save ");
	
}
else
{
 out.println("record not save ");
}
break;
//Query of Update record

case 2:String s1="update account1 set  Actype='"+Actype+"', Balance="+Balance+"  where Acno="+Acno+" ";
k=st.executeUpdate(s1);
if(k>0)
	{
		out.println("record update ");
	}
else
   {
     out.println("record not update ");
   }
break;
//Query of  record display in table form
case 3:
String s2="select * from account1";
rs =st.executeQuery(s2);

out.println("<table border=1>");
while(rs.next())
{

out.println("<tr><th>"+rs.getInt(1)+"</th><th>"+rs.getString(2)+"</th><th>"+rs.getString(3)+"</th></tr>");
}
out.println("</table>");

break;
case 4:
String s3=("delete  from account1  where Acno="+Acno+" ");
int k2=st.executeUpdate(s3);
if(k2>0)
	{
		out.println("record delete");
	}
else
 {
   out.println("record not delete");
 }
break; 
default:out.println("invalid");
}

st.close();

 con.close();
%>
</body>
</html>