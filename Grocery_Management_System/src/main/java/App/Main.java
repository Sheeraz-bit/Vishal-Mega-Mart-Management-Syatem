package App;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Scanner;

public class Main {
	
	private static final String URL = "jdbc:postgresql://localhost:5432/GroDB";
	private static final String USER = "postgres";
	private static final String PASSWD = "sys";
	
	public static void main(String[] args) {
		
		try (Connection con = DriverManager.getConnection(URL, USER, PASSWD);Scanner sc = new Scanner(System.in)){
		
		Shop add = new Shop();
		
		Order order = new Order();
		
		Printing_Details pri = new Printing_Details();
		
				while (true) {
	                System.out.println("\nMain Menu:");
	                System.out.println("1. Add Product");
	                System.out.println("2. Sell (Create Order)");
	                System.out.println("3. Show Details");
	                System.out.println("4. Exit");
	                System.out.print("Enter your choice: ");
	                
	                int choice = sc.nextInt();
	                sc.nextLine();

	                switch (choice) {
	                    case 1 -> add.addProduct(con, sc);
	                    case 2 -> order.createOrder(con, sc);
	                    case 3 -> pri.showDetailsMenu(con, sc);
	                    case 4 -> {
	                        System.out.println("Thank you for Shoping in Vishal Mega Mart");
	                        return;
	                    }
	                    default -> System.out.println("Invalid number Entered");
	                }
				}
		} catch (SQLException e) {
            System.out.println("Database connection error:");
            e.printStackTrace();
            }
		

	}
}

