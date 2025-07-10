-- Created using AI tool couse I'm not gonna write that much lines of query(optional query)

-- Beverages
INSERT INTO shop (pro_id, pro_name, category, price, quantity_in_stock, stock_time) VALUES
('BEV-001', 'Coca-Cola 1L Bottle', 'Beverages', 45.00, 100, CURRENT_TIMESTAMP),
('BEV-002', 'Pepsi 1L Bottle', 'Beverages', 44.00, 100, CURRENT_TIMESTAMP),
('BEV-003', 'Tropicana Orange Juice 500ml', 'Beverages', 60.00, 100, CURRENT_TIMESTAMP),
('BEV-004', 'Real Mixed Fruit Juice 1L', 'Beverages', 75.00, 100, CURRENT_TIMESTAMP),
('BEV-005', 'Nescafé Classic Coffee 100g', 'Beverages', 145.00, 100, CURRENT_TIMESTAMP),
('BEV-006', 'Red Bull Energy Drink 250ml', 'Beverages', 120.00, 100, CURRENT_TIMESTAMP),
('BEV-007', 'Sprite Can 330ml', 'Beverages', 35.00, 100, CURRENT_TIMESTAMP),
('BEV-008', 'Frooti Mango Drink 1L', 'Beverages', 40.00, 100, CURRENT_TIMESTAMP),
('BEV-009', 'Lipton Iced Tea Lemon 500ml', 'Beverages', 55.00, 100, CURRENT_TIMESTAMP),
('BEV-010', 'Amul Kool Flavoured Milk 200ml', 'Beverages', 25.00, 100, CURRENT_TIMESTAMP);

-- Dairy Products
INSERT INTO shop (pro_id, pro_name, category, price, quantity_in_stock, stock_time) VALUES
('DAI-001', 'Amul Milk 500ml', 'Dairy Products', 28.00, 100, CURRENT_TIMESTAMP),
('DAI-002', 'Mother Dairy Curd', 'Dairy Products', 35.00, 100, CURRENT_TIMESTAMP),
('DAI-003', 'Amul Butter 100g', 'Dairy Products', 52.00, 100, CURRENT_TIMESTAMP),
('DAI-004', 'Britannia Cheese Slices', 'Dairy Products', 80.00, 100, CURRENT_TIMESTAMP),
('DAI-005', 'Nestle Slim Milk 1L', 'Dairy Products', 65.00, 100, CURRENT_TIMESTAMP),
('DAI-006', 'Go Cheese Cubes', 'Dairy Products', 90.00, 100, CURRENT_TIMESTAMP),
('DAI-007', 'Amul Paneer 200g', 'Dairy Products', 85.00, 100, CURRENT_TIMESTAMP),
('DAI-008', 'Yogurt Vanilla Cup', 'Dairy Products', 25.00, 100, CURRENT_TIMESTAMP),
('DAI-009', 'Fresh Cream 200ml', 'Dairy Products', 60.00, 100, CURRENT_TIMESTAMP),
('DAI-010', 'Probiotic Lassi 180ml', 'Dairy Products', 30.00, 100, CURRENT_TIMESTAMP);

-- Bakery & Breads
INSERT INTO shop (pro_id, pro_name, category, price, quantity_in_stock, stock_time) VALUES
('BAK-001', 'Brown Bread Loaf', 'Bakery & Breads', 35.00, 100, CURRENT_TIMESTAMP),
('BAK-002', 'White Sandwich Bread', 'Bakery & Breads', 32.00, 100, CURRENT_TIMESTAMP),
('BAK-003', 'Garlic Toast Pack', 'Bakery & Breads', 40.00, 100, CURRENT_TIMESTAMP),
('BAK-004', 'Fruit Cake Slice', 'Bakery & Breads', 25.00, 100, CURRENT_TIMESTAMP),
('BAK-005', 'Multigrain Bun Pack', 'Bakery & Breads', 45.00, 100, CURRENT_TIMESTAMP),
('BAK-006', 'Butter Croissant', 'Bakery & Breads', 50.00, 100, CURRENT_TIMESTAMP),
('BAK-007', 'Whole Wheat Rusk', 'Bakery & Breads', 30.00, 100, CURRENT_TIMESTAMP),
('BAK-008', 'Donut Chocolate', 'Bakery & Breads', 35.00, 100, CURRENT_TIMESTAMP),
('BAK-009', 'Cream Roll', 'Bakery & Breads', 25.00, 100, CURRENT_TIMESTAMP),
('BAK-010', 'Pizza Base 2pcs', 'Bakery & Breads', 40.00, 100, CURRENT_TIMESTAMP);

-- Fruits
INSERT INTO shop (pro_id, pro_name, category, price, quantity_in_stock, stock_time) VALUES
('FRU-001', 'Apple (1kg)', 'Fruits', 150.00, 100, CURRENT_TIMESTAMP),
('FRU-002', 'Banana (Dozen)', 'Fruits', 60.00, 100, CURRENT_TIMESTAMP),
('FRU-003', 'Orange (1kg)', 'Fruits', 80.00, 100, CURRENT_TIMESTAMP),
('FRU-004', 'Mango Alphonso (1kg)', 'Fruits', 180.00, 100, CURRENT_TIMESTAMP),
('FRU-005', 'Grapes Green (500g)', 'Fruits', 50.00, 100, CURRENT_TIMESTAMP),
('FRU-006', 'Papaya Medium', 'Fruits', 45.00, 100, CURRENT_TIMESTAMP),
('FRU-007', 'Watermelon Large', 'Fruits', 60.00, 100, CURRENT_TIMESTAMP),
('FRU-008', 'Pomegranate (1kg)', 'Fruits', 120.00, 100, CURRENT_TIMESTAMP),
('FRU-009', 'Kiwi (3 pcs)', 'Fruits', 90.00, 100, CURRENT_TIMESTAMP),
('FRU-010', 'Guava (1kg)', 'Fruits', 70.00, 100, CURRENT_TIMESTAMP);

-- Vegetables
INSERT INTO shop (pro_id, pro_name, category, price, quantity_in_stock, stock_time) VALUES
('VEG-001', 'Potato (1kg)', 'Vegetables', 25.00, 100, CURRENT_TIMESTAMP),
('VEG-002', 'Onion (1kg)', 'Vegetables', 30.00, 100, CURRENT_TIMESTAMP),
('VEG-003', 'Tomato (1kg)', 'Vegetables', 28.00, 100, CURRENT_TIMESTAMP),
('VEG-004', 'Carrot (500g)', 'Vegetables', 20.00, 100, CURRENT_TIMESTAMP),
('VEG-005', 'Spinach Bunch', 'Vegetables', 15.00, 100, CURRENT_TIMESTAMP),
('VEG-006', 'Cabbage Medium', 'Vegetables', 25.00, 100, CURRENT_TIMESTAMP),
('VEG-007', 'Cauliflower Medium', 'Vegetables', 30.00, 100, CURRENT_TIMESTAMP),
('VEG-008', 'Brinjal Long (1kg)', 'Vegetables', 35.00, 100, CURRENT_TIMESTAMP),
('VEG-009', 'Capsicum Green (500g)', 'Vegetables', 25.00, 100, CURRENT_TIMESTAMP),
('VEG-010', 'Beans (500g)', 'Vegetables', 40.00, 100, CURRENT_TIMESTAMP);

-- Snacks
INSERT INTO shop (pro_id, pro_name, category, price, quantity_in_stock, stock_time) VALUES
('SNK-001', 'Lays Classic Salted', 'Snacks', 20.00, 100, CURRENT_TIMESTAMP),
('SNK-002', 'Kurkure Masala Munch', 'Snacks', 10.00, 100, CURRENT_TIMESTAMP),
('SNK-003', 'Bingo Mad Angles', 'Snacks', 25.00, 100, CURRENT_TIMESTAMP),
('SNK-004', 'Haldiram’s Bhujia 200g', 'Snacks', 45.00, 100, CURRENT_TIMESTAMP),
('SNK-005', 'Pringles Original 110g', 'Snacks', 99.00, 100, CURRENT_TIMESTAMP),
('SNK-006', 'Microwave Popcorn Butter', 'Snacks', 40.00, 100, CURRENT_TIMESTAMP),
('SNK-007', 'Nachos Cheese 150g', 'Snacks', 60.00, 100, CURRENT_TIMESTAMP),
('SNK-008', 'Chips Peri Peri', 'Snacks', 30.00, 100, CURRENT_TIMESTAMP),
('SNK-009', 'Mixture Spicy 250g', 'Snacks', 55.00, 100, CURRENT_TIMESTAMP),
('SNK-010', 'Roasted Peanuts 500g', 'Snacks', 65.00, 100, CURRENT_TIMESTAMP);

-- Grains & Rice
INSERT INTO shop (pro_id, pro_name, category, price, quantity_in_stock, stock_time) VALUES
('GRN-001', 'Basmati Rice 5kg', 'Grains & Rice', 350.00, 100, CURRENT_TIMESTAMP),
('GRN-002', 'Brown Rice 1kg', 'Grains & Rice', 80.00, 100, CURRENT_TIMESTAMP),
('GRN-003', 'Whole Wheat Flour 5kg', 'Grains & Rice', 220.00, 100, CURRENT_TIMESTAMP),
('GRN-004', 'Maida (Refined Flour) 1kg', 'Grains & Rice', 40.00, 100, CURRENT_TIMESTAMP),
('GRN-005', 'Moong Dal (1kg)', 'Grains & Rice', 90.00, 100, CURRENT_TIMESTAMP),
('GRN-006', 'Toor Dal (1kg)', 'Grains & Rice', 110.00, 100, CURRENT_TIMESTAMP),
('GRN-007', 'Chana Dal (1kg)', 'Grains & Rice', 85.00, 100, CURRENT_TIMESTAMP),
('GRN-008', 'Rajma Red (1kg)', 'Grains & Rice', 95.00, 100, CURRENT_TIMESTAMP),
('GRN-009', 'Kabuli Chana (1kg)', 'Grains & Rice', 100.00, 100, CURRENT_TIMESTAMP),
('GRN-010', 'Oats Pack 1kg', 'Grains & Rice', 120.00, 100, CURRENT_TIMESTAMP);

-- Spices & Condiments
INSERT INTO shop (pro_id, pro_name, category, price, quantity_in_stock, stock_time) VALUES
('SPC-001', 'Turmeric Powder 100g', 'Spices & Condiments', 25.00, 100, CURRENT_TIMESTAMP),
('SPC-002', 'Red Chili Powder 100g', 'Spices & Condiments', 35.00, 100, CURRENT_TIMESTAMP),
('SPC-003', 'Garam Masala 100g', 'Spices & Condiments', 40.00, 100, CURRENT_TIMESTAMP),
('SPC-004', 'Cumin Seeds 200g', 'Spices & Condiments', 60.00, 100, CURRENT_TIMESTAMP),
('SPC-005', 'Coriander Powder 200g', 'Spices & Condiments', 50.00, 100, CURRENT_TIMESTAMP),
('SPC-006', 'Black Pepper Whole 100g', 'Spices & Condiments', 70.00, 100, CURRENT_TIMESTAMP),
('SPC-007', 'Mustard Seeds 200g', 'Spices & Condiments', 30.00, 100, CURRENT_TIMESTAMP),
('SPC-008', 'Hing (Asafoetida) 10g', 'Spices & Condiments', 45.00, 100, CURRENT_TIMESTAMP),
('SPC-009', 'Salt Packet 1kg', 'Spices & Condiments', 20.00, 100, CURRENT_TIMESTAMP),
('SPC-010', 'Sugar 1kg', 'Spices & Condiments', 45.00, 100, CURRENT_TIMESTAMP);

-- Cleaning Supplies
INSERT INTO shop (pro_id, pro_name, category, price, quantity_in_stock, stock_time) VALUES
('CLS-001', 'Surf Excel Detergent 1kg', 'Cleaning Supplies', 120.00, 100, CURRENT_TIMESTAMP),
('CLS-002', 'Harpic Toilet Cleaner 500ml', 'Cleaning Supplies', 75.00, 100, CURRENT_TIMESTAMP),
('CLS-003', 'Phenyl Floor Cleaner 1L', 'Cleaning Supplies', 60.00, 100, CURRENT_TIMESTAMP),
('CLS-004', 'Vim Dishwash Bar', 'Cleaning Supplies', 10.00, 100, CURRENT_TIMESTAMP),
('CLS-005', 'Scrub Pad Pack', 'Cleaning Supplies', 15.00, 100, CURRENT_TIMESTAMP),
('CLS-006', 'Dettol Antiseptic 500ml', 'Cleaning Supplies', 90.00, 100, CURRENT_TIMESTAMP),
('CLS-007', 'Room Freshener Spray', 'Cleaning Supplies', 95.00, 100, CURRENT_TIMESTAMP),
('CLS-008', 'Naphthalene Balls 100g', 'Cleaning Supplies', 30.00, 100, CURRENT_TIMESTAMP),
('CLS-009', 'Hand Wash Liquid 200ml', 'Cleaning Supplies', 50.00, 100, CURRENT_TIMESTAMP),
('CLS-010', 'Mop Refill Head', 'Cleaning Supplies', 65.00, 100, CURRENT_TIMESTAMP);

-- Personal Care
INSERT INTO shop (pro_id, pro_name, category, price, quantity_in_stock, stock_time) VALUES
('PRS-001', 'Dove Soap Bar 100g', 'Personal Care', 45.00, 100, CURRENT_TIMESTAMP),
('PRS-002', 'Colgate Toothpaste 150g', 'Personal Care', 65.00, 100, CURRENT_TIMESTAMP),
('PRS-003', 'Pantene Shampoo 180ml', 'Personal Care', 85.00, 100, CURRENT_TIMESTAMP),
('PRS-004', 'Sunsilk Conditioner 180ml', 'Personal Care', 90.00, 100, CURRENT_TIMESTAMP),
('PRS-005', 'Vaseline Body Lotion 200ml', 'Personal Care', 120.00, 100, CURRENT_TIMESTAMP),
('PRS-006', 'Nivea Deodorant 150ml', 'Personal Care', 160.00, 100, CURRENT_TIMESTAMP),
('PRS-007', 'Hair Oil Parachute 300ml', 'Personal Care', 95.00, 100, CURRENT_TIMESTAMP),
('PRS-008', 'Shaving Cream 70g', 'Personal Care', 55.00, 100, CURRENT_TIMESTAMP),
('PRS-009', 'Toothbrush Medium', 'Personal Care', 20.00, 100, CURRENT_TIMESTAMP),
('PRS-010', 'Clean & Clear Face Wash', 'Personal Care', 65.00, 100, CURRENT_TIMESTAMP);

