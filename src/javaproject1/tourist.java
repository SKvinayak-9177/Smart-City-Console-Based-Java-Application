package javaproject1;

import java.io.IOException;
import java.util.Scanner;

public class tourist implements ViewHotelsCallback{
	 public void onHotelsViewComplete() {
	        try {
	            touristmain(); // Return to the tourist page
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    }
	static Scanner sc=new Scanner(System.in);
	static TouristPlaces tp=new TouristPlaces();
	static ViewHotels vh=new ViewHotels();
	static Restaurents rs=new Restaurents();
	static tourist touristInstance = new tourist();
	public static void touristmain() throws IOException {
		int k;
		
		while(true)
		{
			System.out.println("\t\t\t\t\t"+project.YELLOW_BACKGROUND+project.BLUE+project.BOLD+project.UNDERLINE+">>>TOURIEST PAGE<<<"+project.RESET);
			System.out.println("\t\t\t\t1.Touriest Places\t2.View Hotels\n\t\t\t\t3.Restaurants\t\t4.Exit");
			System.out.print("\t\tEnter your choice:");
		k=sc.nextInt();
		switch(k)
		{
			case 1:	tp.touristPlaces();
				   break;
			case 2:vh.hotels(touristInstance);
					break;
			case 3:rs.viewResturents();
					break;
			case 4:System.out.println("\t\t"+project.PURPLE_BACKGROUND+"=>moving to USER PAGE"+project.RESET);
			
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