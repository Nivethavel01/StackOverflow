<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3309/stack", "root", "password");
     Statement mystatement = con.createStatement();
	 ResultSet Mysql=mystatement.executeQuery("select * from Answers");
while(Mysql.next()){
	if(Mysql.getString("id")!=null)
	{
		%><table>
		<tr>
		<td><%=Mysql.getString("id") %></td><td>.</td>
		<td><%=Mysql.getString("answers") %></td></br>
		<td><i><%=Mysql.getString("comment") %></i></td></br>
		</tr>
		</table>
		<%
	}}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Answers</title>
</head>
<body style="background-color:rgb(255, 252, 235);">
      <form action="Answerone.jsp" method="post">
      Question no:<input type="text" name="Question no"/>
      <input type="submit" value="ok"/>
      </form>
     
      
      <h4>Enter the answer</h4>
      <input type="text" name="answers"> <br>
      <h4>Comments...</h4>
      <input type="text" name="comment"> <br>
      <input type="submit" value="ok"/>
      <%
String ids=request.getParameter("id");
String answers=request.getParameter("answers");
String comm=request.getParameter("comment");

try
{
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3309/stack", "root", "password");
        Statement st = con.createStatement();
           int i=st.executeUpdate("insert into Answers(id,answers,comment)values('"+ids+"','"+answers+"','"+comm+"')");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>
         


</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<td>"HEllo world"</td>
<%
String st=request.getParameter("Question no");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3309/stack", "root", "password");
     Statement mystatement = con.createStatement();
	 ResultSet Mysql=mystatement.executeQuery("select * from Answers where id=st");
while(Mysql.next()){
	
		%><table>
		<tr>
		<td><%=Mysql.getString("id") %></td><td>.</td>
		<td><%=Mysql.getString("answers") %></td></br>
		<td><i><%=Mysql.getString("comment") %></i></td></br>
		</tr>
		</table>
		<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


</body>
</html></body>
</html>
