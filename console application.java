package Testing;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Scanner;

public class Mainsql
	{
	private static int d;
	 public static void main(String[] args) throws IOException, ClassNotFoundException, SQLException {
		 System.out.println("*****************************************************************");
		System.out.println("                           STACK OVERFLOW                      ");
		System.out.println("******************************************************************");
		System.out.println("1.Question     2.Answer     3.Delete   ");
		Scanner c = new Scanner(System.in); 
				System.out.println("Enter the option:");
				d=c.nextInt();
	        Mainsql obj=new Mainsql();
	        obj.stacks(d);

}
	
	private void stacks(int d) throws ClassNotFoundException, SQLException {
		Mainsql.d=d;
		if(d==1) {
		     new question();
		    question.insert();}		
		else if(d==2){
		     new answer();
		     answer.insert();}
		else if(d==3){
		      erase dot=new erase();
		      dot.dele();}
		
	}}
		
	
-----------------------------------------------------------------------------------------------------------------------------------------
package Testing;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;
public class answer extends question{
		public static void insert()
		{
		 try (Scanner s = new Scanner(System.in)) {
				try{
		                         System.out.println("Enter answer:");
			               String answer =s.nextLine();
			               System.out.println("Enter question no:");
			               int id =s.nextInt();
			      	     System.out.println("Comments...");
					     String com=s.nextLine();
					     String comment=s.nextLine();
			             Class.forName("com.mysql.cj.jdbc.Driver");
			             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3309/stack", "root", "nivetha2002");
			             PreparedStatement pst = con.prepareStatement("insert into Answers(answer,id,comment) values(?,?,?)");
			             pst.setString(1,answer);
		          	     pst.setInt(2, id);	
		          	     pst.setString(3, comment);
			              int i = pst.executeUpdate();
			              if(i!=0){
							System.out.println("added");    }
			              else{
							System.out.println("failed to add");   }
			   }
			   catch (Exception e){
			    System.out.println(e);
			   }
						}  }
}

-------------------------------------------------------------------------------------------------------------------------------------------
package Testing;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class question {
	public static void insert() {
		 try (Scanner s = new Scanner(System.in)) {
				try {
					System.out.println("Enter question:");
				     String question =s.nextLine();
					System.out.println("Enter question no:");
                    int id =s.nextInt();
				     System.out.println("Comments...");
				     String com=s.nextLine();
				     String comment=s.nextLine();
	                                         Class.forName("com.mysql.cj.jdbc.Driver");
	                                         Connection con = DriverManagser.getConnection("jdbc:mysql://localhost:3309/stack", "root", "nivetha2002");
	                                         PreparedStatement pst = con.prepareStatement("insert into Questions(id,question,comment) values(?,?,?)");
	                                         pst.setInt(1,id);
	                                         pst.setString(2, question);
	                                         pst.setString(3, comment);
	                                         int i = pst.executeUpdate();
	                                         if(i!=0){
			           	System.out.println("added");    }
	                                         else{
				          System.out.println("failed to add");   }   }
	                                 catch (Exception e){
	                                 System.out.println(e);
	                                    }
		
	}}
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------
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
   Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3309/stack", "root", "nivetha2002");

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


