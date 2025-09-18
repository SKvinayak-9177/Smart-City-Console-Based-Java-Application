package javaproject1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class colleges {
	public static final String BLUE = "\u001B[34m";
	public static final String RESET = "\u001B[0m";
	public static final String YELLOW = "\u001B[33m";
	public static final String BOLD = "\033[1m";
	public static final String NORMAL="\033[0m";
	public void collegesInfo() {
		try 
		{
			Connection con=connection.getConnection();
			//System.out.println("Connection established");
			String s="select * from colleges";
			Statement stmt=con.createStatement();
			ResultSet res=stmt.executeQuery(s);
			while(res.next()==true)
			{
				int id=res.getInt(1);
				String college_name=res.getString(2);
				String city=res.getString(3);
				String address=res.getString(4);
				String ctype=res.getString(5);
				String website=res.getString(6);
				System.out.println(BOLD+BLUE+id+". "+college_name+RESET+NORMAL);
				System.out.println("\t\tLocation : "+address);
				System.out.println("\t\tcity :"+city);
				System.out.println("\t\tctype :"+ctype);
				
				System.out.println("\t\tcollege_Website : "+website);
				System.out.println();
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}


	}
	public void collegesCourse(int c) {
		try 
		{
			Connection con=connection.getConnection();
			//System.out.println("Connection established");
			String table="courses"+c;
			String s="select * from "+table;
			Statement stmt=con.createStatement();
			ResultSet res=stmt.executeQuery(s);
			while(res.next()==true)
			{
				int id=res.getInt(4);
				String courses=res.getString(1);
				String fees=res.getString(2);
				String duration=res.getString(3);
				System.out.println(BOLD+YELLOW+id+". "+courses+RESET+NORMAL);
				System.out.println("\t\tFEES : "+fees);
				System.out.println("\t\tduration:"+duration);
				System.out.println();
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

	}
}

