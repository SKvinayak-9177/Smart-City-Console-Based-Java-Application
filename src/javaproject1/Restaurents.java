package javaproject1;

import java.util.Scanner;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Restaurents {
	public void viewResturents()
	{
		Scanner sc=new Scanner(System.in);
		int c=0,k=0;
		try
		{
			Connection con=connection.getConnection();
			String s="select * from restaurents";
			Statement stmt=con.createStatement();
			ResultSet res=stmt.executeQuery(s);
			while(res.next()==true)
			{
				c++;
				int id=res.getInt(1);
				String name=res.getString(2);
				String loc=res.getString(3);
				float rating=res.getFloat(4);
				String timings=res.getString(5);
				String type=res.getString(6);
				String price=res.getString(7);
				System.out.println(project.BRIGHT_YELLOW+id+". "+name+":"+project.RESET);
				System.out.println(project.BRIGHT_CYAN+"\t\tLocation : "+project.RESET+loc+project.BRIGHT_CYAN+"\n\tRating : "+project.RESET+rating+project.BRIGHT_CYAN+"\n\ttimings : "+project.RESET+timings+project.BRIGHT_CYAN+"\n\tType : "+project.RESET+type+project.BRIGHT_CYAN+"\n\tPrice : "+project.RESET+price);
				System.out.println();
			}
			System.out.print("\t\t");
			while(true) {
				System.out.print("Enter The id of the Restaurent to view it's Menu:");
			
				k=sc.nextInt();
			
				
				if(k>0&&k<=c)
				{
					String s1="select restaurent_name from restaurents where id=?";
					PreparedStatement pst=con.prepareStatement(s1);
					pst.setInt(1,k);
					ResultSet res1=pst.executeQuery();
					if(res1.next())
					{
						String restaurent_name=res1.getString(1);
						String s2="select * from "+restaurent_name;
						Statement st=con.createStatement();
						ResultSet re=st.executeQuery(s2);
						System.out.println(project.BOLD+project.BRIGHT_RED+"\t\t\t\t\t.....MENU....."+project.RESET);
						System.out.printf("\t\t\t%-50s %-10s%n", project.BOLD+project.BRIGHT_PURPLE+"Dish Name"+project.RESET,project.BOLD+project.BRIGHT_PURPLE+ "Price"+project.RESET);
				        System.out.println("\t\t\t----------------------------------------------------------");
						while(re.next()==true)
						{
							System.out.printf("\t\t\t%-50s %-10d%n", re.getString(1), re.getInt(2));
						}
					}
				}
				else {
					System.out.println(project.RED+"\t\t\t Invalid Restaurent id...!"+project.RESET);
				}
				System.out.print("\n\t\t=>Enter 0 to Exit: ");
				int t=sc.nextInt();
				if(t==0) {
					break;
				}
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}

