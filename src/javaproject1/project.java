package javaproject1;

import java.io.IOException;
import java.util.Scanner;

import com.github.lalyos.jfiglet.FigletFont;

public class project {
	public static final String UNDERLINE = "\033[4m";
	
	public static final String RESET = "\u001B[0m";
	public static final String RED = "\u001B[31m";
    public static final String GREEN = "\u001B[32m";
    public static final String YELLOW = "\u001B[33m";
    public static final String BLUE = "\u001B[34m";
    public static final String BOLD = "\033[1m";
	public static final String NORMAL="\033[0m";
	public static final String PURPLE = "\u001B[35m";
    public static final String CYAN = "\u001B[36m";
    public static final String WHITE = "\u001B[37m";
    // Bright Colors
    public static final String BRIGHT_RED = "\u001B[91m";
    public static final String BRIGHT_GREEN = "\u001B[92m";
    public static final String BRIGHT_YELLOW = "\u001B[93m";
    public static final String BRIGHT_BLUE = "\u001B[94m";
    public static final String BRIGHT_PURPLE = "\u001B[95m";
    public static final String BRIGHT_CYAN = "\u001B[96m";
    public static final String BRIGHT_WHITE = "\u001B[97m";
    //background
	 public static final String BLACK_BACKGROUND = "\u001B[40m";
	    public static final String RED_BACKGROUND = "\u001B[41m";
	    public static final String GREEN_BACKGROUND = "\u001B[42m";
	    public static final String YELLOW_BACKGROUND = "\u001B[43m";
	    public static final String BLUE_BACKGROUND = "\u001B[44m";
	    public static final String PURPLE_BACKGROUND = "\u001B[45m";
	    public static final String CYAN_BACKGROUND = "\u001B[46m";
	    public static final String WHITE_BACKGROUND = "\u001B[47m";
	    
	   /* public static void printCentered(String line, int width) {
	        if (line == null) line = "";
	        int padding = (width - line.length()) / 2;
	        if (padding < 0) padding = 0;
	        System.out.println(" ".repeat(padding) + line);
	    }*/
	public static void main(String [] args) throws IOException {
		 String text = "Smart City";
	        String asciiArt = FigletFont.convertOneLine(text);

	        int consoleWidth = 100;  // adjust this if your terminal is wider/narrower

	        String[] lines = asciiArt.split("\n");

	        for (String line : lines) {
	            int padding = (consoleWidth - line.length()) / 2;
	            if (padding < 0) padding = 0;
	            System.out.println(" ".repeat(padding) + line);
	            
	        }
	        mainPage();
	       }
		
	

	public static void mainPage() throws IOException {
		try (Scanner sc = new Scanner(System.in)) {
			while(true) {
				System.out.println(BOLD+"\t\t\t\t\t\t   "+BLUE_BACKGROUND+"....Main Menu....\n"+NORMAL);
				System.out.print("\t\t\t\t\t 1.SignUp");
				System.out.println("\t2.Login\n\n\t\t\t\t\t\t  3.Exit");
				
				System.out.print("\t\tEnter your choice:");
				int a=sc.nextInt();
				switch(a) {
					
					case 1:
						System.out.println(BOLD+RED+"\n\t\t\t\t\t"+CYAN_BACKGROUND+".....REGISTRATION.....\n"+RESET);
						String username,password,email;
						String mobileno;
						while(true) {
				            System.out.print("\t\tEnter a username : ");
				            username = sc.next();
				            if(!isValidusername(username)) {
				            	System.out.println(RED+"\t\t\t=>user contains (3-15 characters, letters, numbers, underscores)"+RESET);
				            }
				            else {
				            	break;
				            }
				        }
						while(true) {
							System.out.print("\t\tEnter the password:");
							password=sc.next();
							if (!isValidPassword(password)) {
					            System.out.println(RED+"\t\t\t=>Password does not meet the security requirements.\n\t\t\tNeeds to Statisfy at least one uppercase, lowercase, digit, and special character"+RESET);
					            
					        }
							else {
								break;
							}
						}
						while(true) {
							System.out.print("\t\tEnter the email:");
							email=sc.next();
							if (!isValideamil(email)) {
					            System.out.println(BLUE+"\t\t\t=>Example : abcd@email.com"+RESET);
					            
					        }
							else {
								break;
							}
						}
						while(true) {
							try {
								System.out.print("\t\tEnter the mobile:");
								mobileno=sc.next();
								if (!isValidmobileno(mobileno)) {
					            System.out.println(RED+"\t\t\t=>mobile Start digit is greater than 6 and mobile contains 10 digits only"+RESET);
					            
								}
								else {
									break;
								}
							} 
							catch (NumberFormatException e) {
								
								System.out.println(RED+"\t\t\t=>mobile number contains only digits"+RESET);
							}
								
						}
						user newUser = new user(username, password, email, mobileno);
					boolean registered;
					try {
						registered = admin.registerUser(newUser); 
						if (registered) {
		                        System.out.println(GREEN+"\t\t\tRegistration successful."+RESET);
		                }
						else {
		                        System.out.println(RED+"\t\t\tRegistration failed."+RESET);
		                }
					} 
					catch (Exception e) {
						
						e.printStackTrace();
					}
		                   
						break;
					case 2:
							System.out.println(BOLD+RED+"\n\t\t\t\t\t"+CYAN_BACKGROUND+".....LOGIN PAGE.....\n"+RESET);
							System.out.print("\t\tEnter  Username : ");
							String loginUsername=sc.next();
							System.out.print("\t\tEnter  Password : ");
							String loginPassword=sc.next();
							user loggedinuser=admin.loginuser(loginUsername,loginPassword);
							if(loggedinuser!=null) {
								System.out.println(BOLD+GREEN+"\t\t\tLogin Successfully.\n\t\t\t\t\t"+YELLOW_BACKGROUND+BLUE+BOLD+"WELCOME "+loggedinuser.getUsername()+"!"+RESET);
									
									userpage();
								}
							
							else {
								System.out.println(RED+"Invalid credentials."+RESET);
							}
							
						break;
					case 3:
						 System.out.println(GREEN+"Exiting application."+RESET);
		                    sc.close();
		                    System.exit(0);
		                default:
		                    System.out.println(RED+"Invalid option. Please try again."+RESET);
						
				}
			}
		}

	}
	public static void userpage() throws IOException {
		
		student sobj=new student();
		while(true) {
			System.out.println("\t\t\t\t\t "+YELLOW_BACKGROUND+BLUE+BOLD+UNDERLINE+">>>USER PAGE<<<"+RESET);
			System.out.println("\t\t\t\t1.student\t\t2.touriest\n\t\t\t\t3.Business\t\t4.exit");
			System.out.print("\t\tEnter your choice:");
			try (Scanner sc = new Scanner(System.in)) {
				int b=sc.nextInt();
				switch(b) {
					case 1:sobj.studentmain();
						break;
					case 2:tourist.touristmain();
						break;
					case 3:business.business1();
					break;
					case 4:System.out.println("\t\t"+PURPLE_BACKGROUND+"=>Moving to MAIN MENU."+RESET);
			    		mainPage();
					default:
							System.out.println(RED+"Invalid option. Please try again."+RESET);
						
				}
			}
		}
	}
	private static boolean isValidmobileno(String mobileno) {
		
		return String.valueOf(mobileno).matches("^[7-9][0-9]{9}$");
	}

	private static boolean isValideamil(String email) {
	
		 return email.matches("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$");
	}

	private static boolean isValidPassword(String password) {
		 if (password.length() < 8) return false;
	        
	      
	        boolean hasUpper = false, hasLower = false, hasDigit = false, hasSpecial = false;
	        String specialChars = "!@#$%^&*()-_=+{}[]|;:'\",.<>?/`~";
	        for (char ch : password.toCharArray()) {
	            if (Character.isUpperCase(ch)) hasUpper = true;
	            if (Character.isLowerCase(ch)) hasLower = true;
	            if (Character.isDigit(ch)) hasDigit = true;
	            if (specialChars.indexOf(ch) >= 0) hasSpecial = true;
	        }
	        
	        
	        return hasUpper && hasLower && hasDigit && hasSpecial;
	}


	private static boolean isValidusername(String username) {
		
		return username.matches("^[a-zA-Z0-9_]{3,15}$");
		
	}
}
