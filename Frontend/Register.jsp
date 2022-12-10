String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String userid=request.getParameter("userid");
String password=request.getParameter("password");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3309/loginuser", "root", "password");
Statement st=conn.createStatement();
out.println("Hello Boss");
int i=st.executeUpdate("insert into users(fname,lname,email,userid,password)values('"+fname+"','"+lname+"','"+email+"','"+userid+"','"+password+"')");
out.println("Thank you for register ! Please <a href='index.html'>Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
      <%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3309/", "root", "password");
     Statement mystatement = con.createStatement();
     PreparedStatement pst = con.prepareStatement("insert into users(fname,lname,email,userid,password) values(?,?,?,?,?)");

while(Mysql.next()){

	
		%><table>
		<tr>
		<td><%=pst.getString("id") %></td><td>.</td>
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
