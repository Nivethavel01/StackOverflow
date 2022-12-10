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
<title>Home Page</title>
</head>
<style>
div {
  padding-right: 30px;
  padding-left: 80px;
} 
</style>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #a8e3db;
  color: black;
}
</style>
</head>
<body>

<body>
<div class="topnav">
<a class="active" href="<%=request.getContextPath()%>/FronPage.jsp"> Home </a>
<a href="<%=request.getContextPath()%>/Questform.jsp"> Questions </a>
<a href="<%=request.getContextPath()%>/Answerone.jsp"> Answer </a>
<a href="<%=request.getContextPath()%>/Delete.jsp"> Delete </a>
</div>

<div>
<body>
       <form action="register" method="post">
      <h1 class="title">  ALL QUESTION </h1>
      <a href="<%=request.getContextPath()%>/Questform.jsp">
      <input type="button" value="Ask Questions" style="float: right;"></a>
      </tr>
      
</tr>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3309/stack", "root", "password");
     Statement mystatement = con.createStatement();
	 ResultSet Mysql=mystatement.executeQuery("select * from  Questions");
while(Mysql.next()){
%>
<tr>
<%String ins =Mysql.getString("id"); %>
<td><a href="QuestionRedirect.jsp"><%=Mysql.getString("id")%><input type="hidden" name="id"></td><td>.</td>
<td><%=Mysql.getString("question") %></a></td></br>
<td><i><%=Mysql.getString("comment") %></i></td></br>
<td><i><%=Mysql.getString("time") %></i></td></br></br>

<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>     
</form>
</body>
</html>
