package App;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;
import java.sql.Connection;


public class Shop {
    public static void addProduct(Connection con, Scanner sc) throws SQLException {
    	
        System.out.print("Enter Product Code: ");
        String code = sc.nextLine();
        System.out.print("Enter Product Name: ");
        String name = sc.nextLine();
        System.out.print("Enter Category: ");
        String category = sc.nextLine();
        System.out.print("Enter Price: ");
        double price = sc.nextDouble();
        System.out.print("Enter Quantity: ");
        int qty = sc.nextInt();
        sc.nextLine();

        String sql = "insert into shop(pro_id, pro_name, category, price, quantity_in_stock) values(?, ?, ?, ?, ?)";
        try (PreparedStatement pstm = con.prepareStatement(sql)) {
            pstm.setString(1, code);
            pstm.setString(2, name);
            pstm.setString(3, category);
            pstm.setDouble(4, price);
            pstm.setInt(5, qty);
            pstm.executeUpdate();
            System.out.println("Product added successfully.");
        }
    }
}
