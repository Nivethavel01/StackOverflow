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
		System.out.println("1.Question     2.Answer     3.Delete  ");
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
