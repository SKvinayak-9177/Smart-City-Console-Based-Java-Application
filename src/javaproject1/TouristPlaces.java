package javaproject1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class TouristPlaces {

		public void touristPlaces() {
			try 
			{
				Connection con=connection.getConnection();
				//System.out.println("Connection established");
				String s="select * from tourist_places";
				Statement stmt=con.createStatement();
				ResultSet res=stmt.executeQuery(s);
				while(res.next()==true)
				{
					int id=res.getInt(1);
					String placename=res.getString(2);
					String placeloc=res.getString(3);
					String description=res.getString(4);
					System.out.println(project.BRIGHT_CYAN+id+". "+placename+project.RESET);
					System.out.println(project.BRIGHT_GREEN+"\t\tLocation : "+project.RESET+placeloc);
					System.out.println(project.BRIGHT_GREEN+"\t\tDiscription : "+project.RESET+(wrapText(description,80)));
					System.out.println();
					
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}

		}
		 public static String wrapText(String text, int lineLength) {
		        StringBuilder wrappedText = new StringBuilder();
		        int index = 0;
		        while (index < text.length()) {
		            int end = Math.min(index + lineLength, text.length());

		            // Move back to last space to avoid breaking a word
		            if (end < text.length() && text.charAt(end) != ' ') {
		                int lastSpace = text.lastIndexOf(" ", end);
		                if (lastSpace > index) {
		                    end = lastSpace;
		                }
		            }

		            // Append the line
		            wrappedText.append("\t\t    "); // indent paragraph lines
		            wrappedText.append(text, index, end).append("\n");
		            index = end + 1;
		        }
		        return wrappedText.toString();
		    }
}

