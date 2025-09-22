package javaproject1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class BusinessPlaces{
	public void BusinessPlaces1() {
		try 
		{
			Connection con=connection.getConnection();
			//System.out.println("Connection established");
			String s="select * from business";
			Statement stmt=con.createStatement();
			ResultSet res=stmt.executeQuery(s);
			while(res.next()==true)
			{
				int id=res.getInt(1);
				String placename=res.getString(2);
				String placeloc=res.getString(3);
				String description=res.getString(4);
				System.out.println(project.BRIGHT_CYAN+id+". "+placename+project.RESET);
				System.out.println(project.BRIGHT_GREEN+"\t\tCategory : "+project.RESET+placeloc);
				System.out.println(project.BRIGHT_GREEN+"\t\tFeatures : "+project.RESET+description);
				System.out.println();
				
			}
		}
		catch(Exception e)
		{
			System.out.println("\n\n"+project.WHITE_BACKGROUND+project.RED+project.BOLD+project.UNDERLINE+">>>There are no Business venues for now Pleace visit this page after some time or choose another option of your choice<<<"+project.RESET+"\t\t\t\t\t\n\n");
		}
	}
}
