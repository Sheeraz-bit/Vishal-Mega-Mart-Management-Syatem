package App;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.sql.Connection;


public class Printing_Details {
    public static void showDetailsMenu(Connection con, Scanner sc) throws SQLException {
        while (true) {
            System.out.println("\nShow Details:");
            System.out.println("1. Product in Stock");
            System.out.println("2. Customer Details");
            System.out.println("3. Order Details");
            System.out.println("4. Back to Main Menu");
            System.out.print("Choose table: ");
            int choice = sc.nextInt();
            sc.nextLine();
            switch (choice) {
                case 1 -> printWithSortOptions(con, sc, "shop", "pro_id", "pro_name", "shock_time");
                case 2 -> printWithSortOptions(con, sc, "customer", "cus_id", "cus_name", "cos_time");
                case 3 -> printWithSortOptions(con, sc, "orders", "order_id", null, "order_time");
                case 4 -> { return; }
                default -> System.out.println("Invalid.");
            }
        }
    }

    private static void printWithSortOptions(Connection con, Scanner sc, String table, String idCol, String nameCol, String dateCol) throws SQLException {
        while (true) {
            System.out.println("\nSort by:");
            System.out.println("1. Ascending Order (ID)");
            System.out.println("2. Descending Order (ID)");
            if (nameCol != null) {
                System.out.println("3. Alphabetical Order (Name)");
                System.out.println("4. Reverse Alphabetical (Name)");
            }
            System.out.println("5. Recent (Date)");
            System.out.println("6. Oldest (Date)");
            System.out.println("7. Back");
            System.out.print("Choose: ");
            int sort = sc.nextInt();
            sc.nextLine();
            if (sort == 7) return;

            String query = "SELECT * FROM " + table + " ORDER BY ";
            switch (sort) {
                case 1 -> query += idCol + " ASC";
                case 2 -> query += idCol + " DESC";
                case 3 -> {
                    if (nameCol != null) query += nameCol + " ASC";
                    else continue;
                }
                case 4 -> {
                    if (nameCol != null) query += nameCol + " DESC";
                    else continue;
                }
                case 5 -> query += dateCol + " DESC";
                case 6 -> query += dateCol + " ASC";
                default -> {
                    System.out.println("Invalid option.");
                    continue;
                }
            }

            try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
                ResultSetMetaData meta = rs.getMetaData();
                int cols = meta.getColumnCount();
                while (rs.next()) {
                    for (int i = 1; i <= cols; i++) {
                        System.out.print(meta.getColumnLabel(i) + ": " + rs.getString(i) + "  ");
                    }
                    System.out.println();
                }
            }
        }
    }
}
