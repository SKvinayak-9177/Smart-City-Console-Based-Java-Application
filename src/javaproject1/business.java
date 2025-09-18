package javaproject1;



import java.io.IOException;
import java.util.Scanner;

public class business implements ViewHotelsCallback {
	static business businessInstance = new business();
	static Restaurents rs=new Restaurents();
	public static void business1() throws IOException {
		
		BusinessPlaces bp=new BusinessPlaces();
		ViewHotels vh=new ViewHotels();
		try (Scanner sc = new Scanner(System.in)) {
			int k;
			while(true)
			{
				System.out.println("\t\t\t\t\t"+project.YELLOW_BACKGROUND+project.BLUE+project.BOLD+project.UNDERLINE+">>>BUSINESS PAGE<<<"+project.RESET);
				System.out.println("\t\t\t\t1.Business Places\t2.View Hotels\n\t\t\t\t3.Restaurants\t\t4.Exit");
				System.out.print("\t\tEnter your choice:");
			k=sc.nextInt();
			switch(k)
			{
				case 1:	bp.BusinessPlaces1();
					   break;
				case 2: vh.hotels(businessInstance);
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
				default :System.out.print(project.RED+"\t\t\tInvalid inputs...!"+project.RESET);
			}
			}
		}
		
	}
	public void onHotelsViewComplete() {
        try {
            business1(); // Return to the business page
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
	
}
