package javaproject1;

import java.io.IOException;
import java.util.Scanner;

public class student {
	public void studentmain() {
		int k;
		Restaurents rest=new Restaurents();
		try (Scanner sc = new Scanner(System.in)) {
			colleges cobj=new colleges();
			while(true)
			{
			System.out.println("\t\t\t\t\t"+project.BOLD+project.YELLOW_BACKGROUND+project.BLUE+project.UNDERLINE+">>>STUDENT PAGE<<<"+project.NORMAL);
			System.out.print("\t\t\t1.View the Collegs at Hyderabad.");
			System.out.println("\t2. View courses at colleges.");
			System.out.print("\t\t\t3. View Restaurants.");
			System.out.println("\t\t\t4.Exit");
			System.out.print("\t\tEnter your chioce:");
			k=sc.nextInt();
			switch(k)
			{
				case 1:	cobj.collegesInfo();
					   break;
				case 2:System.out.print("Enter the college id :");
						int c=sc.nextInt();
					cobj.collegesCourse(c);
						break;
				case 3:rest.viewResturents();
					break;
				case 4:System.out.println("\t\t"+project.PURPLE_BACKGROUND+"=>Moving to USER PAGE"+project.RESET);
						
						//sc.close();
				
						try {
							project.userpage();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						break;
				default :System.out.print("\t\t\tInvalid inputs...!");
				}
			
			}
		}
	}
	
}