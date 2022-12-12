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
	                                         Connection con = DriverManagser.getConnection("jdbc:mysql://localhost:3309/stack", "root", "password");
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
