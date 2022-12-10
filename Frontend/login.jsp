<%
String userid=request.getParameter("userid"); 
session.putValue("userid",userid); 
String password=request.getParameter("password"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3309/loginuser","root","password"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from users where userid='"+userid+"' and password='"+password+"'"); 
try{
	rs.next();
	        if(rs.getString("password").equals(password)&&rs.getString("userid").equals(userid)) 
			{ 
			      out.println("Welcome "  +userid); 
			} 
		else{
			 out.println("Invalid password or username.");
		    }
}
catch (Exception e) {
e.printStackTrace();
}
%>
