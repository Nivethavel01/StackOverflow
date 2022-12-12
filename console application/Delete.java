package Testing;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
public class erase {
	 public void dele(){
         Scanner s = new Scanner(System.in);
          System.out.println("Enter question no:");
          String dq=s.nextLine();
Connection con = null;
String driver = "com.mysql.cj.jdbc.Driver";
try {
Class.forName(driver);
   Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3309/stack", "root", "password");

try {
	Statement st = con1.createStatement();
	 String sql = "delete from Questions  where id= "+dq;
	 String sql1 = "delete from Answers  where id= "+dq;
	 st.executeUpdate(sql);
	 st.executeUpdate(sql1);
	 st.close();
	System.out.println("Data Deleted");
} catch (SQLException s1) {
	System.out.println("SQL statement is not executed!");
	System.out.println(s1);
}
con1.close();
} catch (Exception e) {
	e.printStackTrace();	
}}}
