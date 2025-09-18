package javaproject1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class ViewHotels {
	
	static Scanner sc = new Scanner(System.in);
	public int c = 0;
	int consoleWidth = 80; // Adjust this value based on your console's width
	// String centeredText = StringUtils.center(text, consoleWidth);

	public void hotels(ViewHotelsCallback callback) throws IOException 
	{
		try 
		{
			Connection con = connection.getConnection();
			String s = "select * from hotels";
			Statement stmt = con.createStatement();
			ResultSet res = stmt.executeQuery(s);
			while (res.next() == true) 
			{
				c++;
				int id = res.getInt(1);
				String name = res.getString(2);
				String loc = res.getString(3);
				String Amenities = res.getString(4);
				String price = res.getString(5);
				System.out.println(project.CYAN + "\n" + id + ". " + name + "." + project.RESET);
				System.out.println(project.BRIGHT_GREEN + "\n\t Location :- " + project.RESET + loc + ".");
				System.out.println(project.BRIGHT_GREEN + "\t\t Amenities :- " + project.RESET + Amenities + ".");
				System.out.println(project.BRIGHT_GREEN + "\t\t Price :- " + project.RESET + price + ".");
				System.out.println();
			}
			int k;
			while (true) 
			{
				System.out.println("\t\t\t\t\t" + project.YELLOW_BACKGROUND + project.BLUE + project.BOLD
						+ ">>>RESERVATION SYSTEM<<<" + project.RESET);
				System.out.println(
						"\t\t\t\t1.Make a Reservation\t\t2.View Reservation\n\t\t\t\t3.cancel Reservation\t\t4.Exit");
				System.out.print("\t\tEnter your choice:");

				k = sc.nextInt();
				switch (k) 
				{
					case 1:
						makereservation();
						break;
					case 2:
						viewReservation();
						break;
					case 3:
						cancelReservation();
						break;
					case 4:System.out.println("\t\t"+project.PURPLE_BACKGROUND+"=>Returning to Previous Page"+project.RESET);
					callback.onHotelsViewComplete();
					 return;
					default:
						System.out.print("\t\t\tInvalid inputs...!");
				}

			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

	public void makereservation() 
	{
		int r, count = 0;
		do 
		{
			System.out.println("Enter hotel number from the list.");
			System.out.println("Enter any number except hotel id for to Exit.");
			r = sc.nextInt();
			if (r >= 1 && r <= c) 
			{
				try 
				{

					Connection con = connection.getConnection();
					String s1 = "select hotel_name from hotels where id=?";
					PreparedStatement pstmt = con.prepareStatement(s1);
					pstmt.setInt(1, r);
					ResultSet res = pstmt.executeQuery();
					if (res.next()) 
					{
						String hotel_name = res.getString(1);
						String s2 = "Select rooms,status,price from " + hotel_name;
						Statement stm = con.createStatement();
						ResultSet res1 = stm.executeQuery(s2);
						System.out.printf("%-10s %-12s %-10s   ", "Room No.", "Status", "Price");
						System.out.println(); // header
						System.out.println("------------------------------------------------------------");
						while (res1.next() == true) 
						{
							count++;
							int room = res1.getInt(1);
							String status = res1.getString(2);
							String price = res1.getString(3);
							System.out.printf("%-10d %-12s %-10s   ", room, status, price);
							System.out.println();
						}
						System.out.println("\n");
						System.out.println("-->Please Enter The Room Id to Reserve The Room:");
						System.out.println("\n-->Please Enter 0 to Exit.");
						int x = sc.nextInt();
						if (x == 0) 
						{
							break;
						} 
						else 
						{
							String s3="select mobile from "+hotel_name+" where rooms=?";
							PreparedStatement pst=con.prepareStatement(s3);
							pst.setInt(1, x);
							ResultSet ress=pst.executeQuery();
							if(ress.next())
							{
								 long mobile=ress.getLong(1);
								if(mobile==0)
								{
									int k = roomReserve(hotel_name, x);
									if (k == 0) 
									{
										System.out.println("Reservation is Unsuccessful Try Again.");
										System.out.println();
									} 
									else if (k == 1) 
									{
										System.out.println("Reservation Successful.");
										System.out.println();
									}
								}
								else
								{
									System.out.println("The room number you have entered is not available.");
								}
								
							}
							else
							{
								System.out.println("Please Select the valid Room id.");
							}
						}
					}
				} 
				catch (Exception e) 
				{
					e.printStackTrace();
				}
			}

		}
		while (r >= 1 && r <= c);
	}

	public int roomReserve(String s, int a) 
	{
		System.out.println("\n Enter Your Name");
		String name = sc.next();
		System.out.println("\nEnter Your Mobile Number");
		String mobile = sc.next();
		try 
		{
			Connection con = connection.getConnection();
			String s1 = "update " + s + " set status='reserved',costomer_name=?,mobile=? where rooms=?";
			PreparedStatement pstmt = con.prepareStatement(s1);
			pstmt.setString(1, name);
			pstmt.setString(2, mobile);
			pstmt.setInt(3, a);
			int rowsAffected = pstmt.executeUpdate();
			if (rowsAffected > 0) 
			{
				String s2 = "Select rooms,price from " + s + " where rooms=?";
				PreparedStatement pst = con.prepareStatement(s2);
				pst.setInt(1, a);
				ResultSet res = pst.executeQuery();
				if (res.next() == true) 
				{
					int room = res.getInt(1);
					String price = res.getString(2);
					String s3 = "INSERT INTO Reservations (user_name,costomer_name, mobile, hotel_name, room, price, reservation_status) VALUES (?,?, ?, ?, ?, ?, ?)";
					PreparedStatement pstmt1 = con.prepareStatement(s3);
					pstmt1.setString(1, admin.user_name);
					pstmt1.setString(2, name);
					pstmt1.setString(3, mobile);
					pstmt1.setString(4, s);
					pstmt1.setInt(5, room);
					pstmt1.setNString(6, price);
					pstmt1.setString(7, "reserved");
					int rows = pstmt1.executeUpdate();
					return rows;
				}

				return 1;
			} 
			else 
			{
				return 0;
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return 0;
		}

	}

	public int viewReservation() 
	{
		try 
		{
			Connection con = connection.getConnection();
			String s = "select id,costomer_name,mobile,hotel_name,room,price from reservations where user_name=? and reservation_status='reserved'";
			PreparedStatement stmt = con.prepareStatement(s);
			stmt.setString(1, admin.user_name);
			ResultSet res = stmt.executeQuery();
			int c = 0, id=0;
			while (res.next() == true) 
			{
				id=res.getInt(1);
				String costomer_name = res.getString(2);
				String mobile = res.getString(3);
				String hotel_name = res.getString(4);
				String room = res.getString(5);
				String price = res.getString(6);
				System.out.println("\n" + id + ". Coustomer Name:-   " + costomer_name + "\tMobile:-   " + mobile
						+ "\tHotel Name:-   " + hotel_name + "\tRoom:-   " + room + "\tPrice:-   " + price + "\n");
			}
			if (id == 0) 
			{
				System.out.print("\nThere are no rooms reserved Please Reserve them to see.\n");
				return 0;
			} else 
			{
				return id;
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			return 0;
		}
	}

	public void cancelReservation() 
	{
		int id = viewReservation();
		if (id == 0) 
		{
			System.out.print("There are no reservation to be Canceled");
		} 
		else 
		{
			System.out.println("Enter the id of the reservation you want to cancel:  ");
			int r = sc.nextInt();
			if (r <= 0 && r>id) 
			{
				System.out.println("Invalid Reservation Number please try again");
			} 
			else 
			{
				try 
				{
					Connection con = connection.getConnection();
					String s = "select hotel_name,room from reservations where id=" + r;
					Statement stmt = con.createStatement();
					ResultSet res = stmt.executeQuery(s);
					if (res.next())
					{
						String hotel = res.getString(1);
						String room = res.getString(2);
						String s1 = "update " + hotel + " set status=?,costomer_name=null,mobile=null where rooms=?";
						PreparedStatement pstmt = con.prepareStatement(s1);
						pstmt.setString(1, "Available");
						pstmt.setString(2, room);
						int rows = pstmt.executeUpdate();
						if (rows > 0) 
						{
							String s2 = "update reservations set reservation_status=? where room=?";
							PreparedStatement pstmt1 = con.prepareStatement(s2);
							pstmt1.setString(1,"Canceled");
							pstmt1.setString(2, room);
							pstmt1.executeUpdate();
							System.out.println("Cancelation Successfull.");
						} 
						else 
						{
							System.out.println("Somthing Went Wrong Please Try Again.");
						}
					}
				} 
				catch (Exception e) 
				{
					e.printStackTrace();
				}

			}
		}
	}

}

