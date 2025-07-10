package App;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.sql.Connection;

	
public class Order {
	public static void createOrder(Connection conn, Scanner sc) throws SQLException {
	    System.out.print("Enter Customer Name: ");
	    String name = sc.nextLine();
	    System.out.print("Enter Phone: ");
	    String phone = sc.nextLine();

	    int customerId;
	    String insertCustomer = "insert into customer(cus_name, phone) values(?, ?) returning cus_id";
	    try (PreparedStatement pstm = conn.prepareStatement(insertCustomer)) {
	        pstm.setString(1, name);
	        pstm.setString(2, phone);
	        ResultSet rs = pstm.executeQuery();
	        rs.next();
	        customerId = rs.getInt("cus_id");
	    }

	    double totalAmount = 0;
	    List<Object[]> items = new ArrayList<>();

	    while (true) {
	        System.out.print("Enter Product Code (or 'done'): ");
	        String proId = sc.nextLine();
	        if (proId.equalsIgnoreCase("done")) break;

	        System.out.print("Enter Quantity: ");
	        int qty = sc.nextInt();
	        sc.nextLine(); // consume leftover newline

	        String selectProduct = "select price, quantity_in_stock from shop where pro_id = ?";
	        try (PreparedStatement pstm = conn.prepareStatement(selectProduct)) {
	            pstm.setString(1, proId);
	            ResultSet rs = pstm.executeQuery();
	            if (rs.next()) {
	                double price = rs.getDouble("price");
	                int stock = rs.getInt("quantity_in_stock");

	                if (qty > stock) {
	                    System.out.println("Insufficient stock. Available: " + stock);
	                    continue;
	                }

	                totalAmount += price * qty;
	                items.add(new Object[]{proId, qty, price});
	            } else {
	                System.out.println("Product not found. Plz use guide in readme file");
	            }
	        }
	    }

	    if (items.isEmpty()) {
	        System.out.println("No valid products selected. Order cancelled.");
	        return;
	    }

	    int orderId;
	    String insertOrder = "insert into orders(cus_id, total_amount) values(?, ?) returning order_id";
	    try (PreparedStatement pstm = conn.prepareStatement(insertOrder)) {
	        pstm.setInt(1, customerId);
	        pstm.setDouble(2, totalAmount);
	        ResultSet rs = pstm.executeQuery();
	        rs.next();
	        orderId = rs.getInt("order_id");
	    }

	    String insertItem = "insert into order_item(order_id, pro_id, quantity, price_per_unit) values(?, ?, ?, ?)";
	    String updateStock = "update shop set quantity_in_stock = quantity_in_stock - ? where pro_id = ?";

	    try (PreparedStatement itemPstm = conn.prepareStatement(insertItem);
	         PreparedStatement stockPstm = conn.prepareStatement(updateStock)) {

	        for (Object[] item : items) {
	            String proId = (String) item[0];
	            int qty = (int) item[1];
	            double price = (double) item[2];

	            itemPstm.setInt(1, orderId);
	            itemPstm.setString(2, proId);
	            itemPstm.setInt(3, qty);
	            itemPstm.setDouble(4, price);
	            itemPstm.addBatch();

	            stockPstm.setInt(1, qty);
	            stockPstm.setString(2, proId);
	            stockPstm.addBatch();
	        }

	        itemPstm.executeBatch();
	        stockPstm.executeBatch();
	    }

	    System.out.println("Order created successfully. Total Amount: ₹" + totalAmount);
	}

}
