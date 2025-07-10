# Vishal-Mega-Mart-Management-Syatem

A console-based Java application to manage grocery store operations such as adding products, managing customer orders, tracking stock, and viewing reports in real time with PostgreSQL database support.

---
### ✅ 10 Product Categories with Unique Codes (IMP Guide)

| Category Name           | Code Prefix | Example Product ID |
|-------------------------|-------------|---------------------|
| 🧃 Beverages            | BEV         | BEV-001             |
| 🧈 Dairy Products       | DAI         | DAI-001             |
| 🥖 Bakery & Breads      | BAK         | BAK-001             |
| 🍎 Fruits               | FRU         | FRU-001             |
| 🥦 Vegetables           | VEG         | VEG-001             |
| 🍪 Snacks               | SNK         | SNK-001             |
| 🍚 Grains & Rice        | GRN         | GRN-001             |
| 🌶 Spices & Condiments  | SPC         | SPC-001             |
| 🧼 Cleaning Supplies    | CLS         | CLS-001             |
| 🧴 Personal Care        | PRS         | PRS-001             |

## 🛠️ Technologies Used

- **Java 24**
- **PostgreSQL**
- **JDBC**
- **OOP**
- **Maven**
- **Spring Tool Suite 4**

---

## ✅ Features

- Add new products with category-based unique IDs
- Create customer orders with automatic stock adjustment
- Prevent orders with insufficient stock
- Display sorted details of:
  - Products in stock
  - Customer information
  - Order history
- User-friendly CLI navigation and prompts
- Structured database schema for scalability

---

## 🗃️ Database Tables

- `shop` – stores product details
- `customer` – customer records
- `orders` – order headers (customer + total)
- `order_item` – line items in each order

---

## 📊 ER Diagram (Entity Relationship Overview)

| Table Name     | Primary Key     | Foreign Keys                            | Description                                      |
|----------------|------------------|------------------------------------------|--------------------------------------------------|
| `shop`         | `pro_id`         | -                                        | Stores product information                       |
| `customer`     | `cus_id`         | -                                        | Stores customer data                             |
| `orders`       | `order_id`       | `cus_id` → customer(cus_id)              | Stores order summary linked to customers         |
| `order_item`   | `order_item_id`  | `order_id` → orders, `pro_id` → shop     | Stores product-level data for each order         |

---

## Usage of AI in the project (Imp Note)

- Creating main structure of project
- Finding errors in Print_Details class(In sorting part).
- Insert Query
- Readme File

## Group Members
### Superwiser:

- Name: Jaywanta Kawale
- Phone: 7028089058
- Email: jaywanta98@gmail.com

### Github Manager:

- Name: Buttepwad Akash Prabhakar 
- Phone: 9823735901
- Email: akashbuttepwad4@gmail.com

### Programer:

- Name: Abdul Nabi Sheeraz
- Phone: 9022009241
- Email: sheeraz842122@gmail.com

### Debugger:

- Name: Pathan Faizan
- Phone: 8767025292
- Email: pathanfaizan8767@gmail.com
