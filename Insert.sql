USE FoodDeliveryDB1;
GO

-- 1. USERS (10 records)
INSERT INTO Users
(First_Name, Last_Name, Email, Phone, Gender)
VALUES
('Rahul', 'Sharma', 'rahul@gmail.com', '9876500001', 'Male'),
('Priya', 'Patil', 'priya@gmail.com', '9876500002', 'Female'),
('Amit', 'Verma', 'amit@gmail.com', '9876500003', 'Male'),
('Sneha', 'Desai', 'sneha@gmail.com', '9876500004', 'Female'),
('Karan', 'Mehta', 'karan@gmail.com', '9876500005', 'Male'),
('Anjali', 'Joshi', 'anjali@gmail.com', '9876500006', 'Female'),
('Vikas', 'Shah', 'vikas@gmail.com', '9876500007', 'Male'),
('Neha', 'Kulkarni', 'neha@gmail.com', '9876500008', 'Female'),
('Arjun', 'Rao', 'arjun@gmail.com', '9876500009', 'Male'),
('Pooja', 'Singh', 'pooja@gmail.com', '9876500010', 'Female');


-- 2. RESTAURANTS (10 records)
INSERT INTO Restaurants
(Restaurant_Name, Phone, Email, Address, City, Rating, Is_Active)
VALUES
('Food Palace', '9123400001', 'foodpalace@gmail.com', 'FC Road', 'Pune', 4.5, 1),
('Pizza Corner', '9123400002', 'pizzacorner@gmail.com', 'Baner', 'Pune', 4.2, 1),
('Burger Hub', '9123400003', 'burgerhub@gmail.com', 'Wakad', 'Pune', 4.1, 1),
('Biryani House', '9123400004', 'biryani@gmail.com', 'Kothrud', 'Pune', 4.6, 1),
('Chinese Express', '9123400005', 'chinese@gmail.com', 'Hinjewadi', 'Pune', 4.0, 1),
('Sweet Treats', '9123400006', 'sweets@gmail.com', 'Viman Nagar', 'Pune', 4.4, 1),
('South Spice', '9123400007', 'southspice@gmail.com', 'Hadapsar', 'Pune', 4.3, 1),
('North Kitchen', '9123400008', 'northkitchen@gmail.com', 'Aundh', 'Pune', 4.2, 1),
('Fast Food Point', '9123400009', 'fastfood@gmail.com', 'Pimple Saudagar', 'Pune', 3.9, 1),
('Healthy Bites', '9123400010', 'healthy@gmail.com', 'Kharadi', 'Pune', 4.5, 1);


-- 3. CATEGORIES (10 records)
INSERT INTO Categories
(Category_Name, Description)
VALUES
('Pizza', 'Different varieties of pizza'),
('Burger', 'Different types of burgers'),
('Biryani', 'Rice and biryani dishes'),
('Chinese', 'Chinese food items'),
('Desserts', 'Sweet dishes and desserts'),
('Beverages', 'Cold and hot drinks'),
('South Indian', 'South Indian food'),
('North Indian', 'North Indian food'),
('Fast Food', 'Quick food items'),
('Salads', 'Healthy salad dishes');


-- 4. ADDRESSES (10 records)
INSERT INTO Addresses
(User_ID, House_No, Street, City, State, Pincode, Address_Type)
VALUES
(1, '101', 'FC Road', 'Pune', 'Maharashtra', '411004', 'Home'),
(2, '202', 'Baner Road', 'Pune', 'Maharashtra', '411045', 'Home'),
(3, '303', 'Wakad Road', 'Pune', 'Maharashtra', '411057', 'Office'),
(4, '404', 'Kothrud Road', 'Pune', 'Maharashtra', '411038', 'Home'),
(5, '505', 'Hinjewadi Road', 'Pune', 'Maharashtra', '411057', 'Home'),
(6, '606', 'Viman Nagar', 'Pune', 'Maharashtra', '411014', 'Office'),
(7, '707', 'Hadapsar Road', 'Pune', 'Maharashtra', '411028', 'Home'),
(8, '808', 'Aundh Road', 'Pune', 'Maharashtra', '411007', 'Home'),
(9, '909', 'Pimple Saudagar', 'Pune', 'Maharashtra', '411027', 'Office'),
(10, '110', 'Kharadi Road', 'Pune', 'Maharashtra', '411014', 'Home');


-- 5. MENU ITEMS (10 records)
INSERT INTO MenuItems
(Restaurant_ID, Category_ID, Item_Name, Description, Price, Is_Available)
VALUES
(1, 1, 'Margherita Pizza', 'Classic cheese pizza', 250, 1),
(2, 2, 'Veg Burger', 'Fresh vegetable burger', 120, 1),
(3, 3, 'Chicken Biryani', 'Spicy chicken biryani', 300, 1),
(4, 4, 'Veg Noodles', 'Chinese vegetable noodles', 220, 1),
(5, 5, 'Chocolate Cake', 'Chocolate dessert', 180, 1),
(6, 6, 'Cold Coffee', 'Chilled coffee', 240, 1),
(7, 7, 'Masala Dosa', 'South Indian dosa', 100, 1),
(8, 8, 'Paneer Butter Masala', 'North Indian curry', 150, 1),
(9, 9, 'French Fries', 'Crispy potato fries', 120, 1),
(10, 10, 'Green Salad', 'Fresh vegetable salad', 90, 1);


-- 6. DELIVERY PARTNERS (10 records)
INSERT INTO DeliveryPartners
(First_Name, Last_Name, Phone, Vehicle_Type, Vehicle_Number, Is_Available)
VALUES
('Ramesh', 'Kumar', '9988700001', 'Bike', 'MH12AB1001', 1),
('Suresh', 'Patil', '9988700002', 'Bike', 'MH12AB1002', 1),
('Mahesh', 'Shah', '9988700003', 'Scooter', 'MH12AB1003', 1),
('Raj', 'Verma', '9988700004', 'Bike', 'MH12AB1004', 1),
('Vijay', 'Rao', '9988700005', 'Scooter', 'MH12AB1005', 1),
('Aakash', 'Joshi', '9988700006', 'Bike', 'MH12AB1006', 1),
('Nitin', 'Desai', '9988700007', 'Bike', 'MH12AB1007', 0),
('Kunal', 'Mehta', '9988700008', 'Scooter', 'MH12AB1008', 1),
('Deepak', 'Singh', '9988700009', 'Bike', 'MH12AB1009', 1),
('Rohit', 'Sharma', '9988700010', 'Scooter', 'MH12AB1010', 1);

-- 7. ORDERS (10 records)
INSERT INTO Orders
(User_ID, Restaurant_ID, Address_ID, Total_Amount, Order_Status)
VALUES
(1, 1, 1, 250, 'Delivered'),
(2, 2, 2, 120, 'Delivered'),
(3, 3, 3, 300, 'Delivered'),
(4, 4, 4, 220, 'Delivered'),
(5, 5, 5, 180, 'Delivered'),
(6, 6, 6, 240, 'Delivered'),
(7, 7, 7, 100, 'Delivered'),
(8, 8, 8, 150, 'Delivered'),
(9, 9, 9, 120, 'Delivered'),
(10, 10, 10, 90, 'Delivered');

select * from Orders


-- 8. ORDER ITEMS (10 records)
INSERT INTO Order_Items
(Order_ID, MenuItem_ID, Quantity, Item_Price)
VALUES
(1, 1, 1, 250),
(2, 2, 1, 120),
(3, 3, 1, 300),
(4, 4, 1, 220),
(5, 5, 1, 180),
(6, 6, 1, 240),
(7, 7, 1, 100),
(8, 8, 1, 150),
(9, 9, 1, 120),
(10, 10, 1, 90);


-- 9. PAYMENTS (10 records)
INSERT INTO Payments
(Order_ID, Payment_Method, Payment_Status, Amount)
VALUES
(1, 'UPI', 'Success', 250),
(2, 'Card', 'Success', 120),
(3, 'Cash', 'Success', 300),
(4, 'UPI', 'Success', 220),
(5, 'Card', 'Success', 180),
(6, 'UPI', 'Success', 240),
(7, 'Cash', 'Success', 100),
(8, 'Card', 'Success', 150),
(9, 'UPI', 'Success', 120),
(10, 'Cash', 'Success', 90);


-- 10. DELIVERIES (10 records)
INSERT INTO Deliveries
(Order_ID, Partner_ID, Pickup_Time, Delivered_Time, Delivery_Status)
VALUES
/*(11, 1, '2026-11-01 12:00', '2026-11-01 12:30', 'Delivered'),
(2, 2, '2026-11-01 13:00', '2026-11-01 13:35', 'Delivered'),
(3, 3, '2026-11-01 14:00', '2026-11-01 14:40', 'Delivered'),*/
(4, 4, '2026-11-01 15:00', '2026-11-01 15:30', 'Delivered'),
(5, 5, '2026-11-01 16:00', '2026-11-01 16:35', 'Delivered'),
(6, 6, '2026-11-02 12:00', '2026-11-02 12:25', 'Delivered'),
(7, 7, '2026-11-02 13:00', '2026-11-02 13:40', 'Delivered'),
(8, 8, '2026-11-02 14:00', '2026-11-02 14:30', 'Delivered'),
(9, 9, '2026-11-02 15:00', '2026-11-02 15:35', 'Delivered'),
(10, 10, '2026-11-02 16:00', '2026-11-02 16:30', 'Delivered');


-- 11. REVIEWS (10 records)
INSERT INTO Reviews
(User_ID, Restaurant_ID, Order_ID, Rating, Review_Comment)
VALUES
(1, 1, 1, 5, 'Excellent food and service'),
(2, 2, 2, 4, 'Good burger'),
(3, 3, 3, 5, 'Delicious biryani'),
(4, 4, 4, 4, 'Tasty noodles'),
(5, 5, 5, 5, 'Amazing chocolate cake'),
(6, 6, 6, 4, 'Good coffee'),
(7, 7, 7, 5, 'Authentic dosa'),
(8, 8, 8, 4, 'Nice paneer curry'),
(9, 9, 9, 3, 'Average fries'),
(10, 10, 10, 5, 'Fresh and healthy salad');


-- 12. COUPONS (10 records)
INSERT INTO Coupons
(Coupon_Code, Discount_Type, Discount_Value, Min_Order_Amount, Expiry_Date, Is_Active)
VALUES
('WELCOME10', 'Percentage', 10, 100, '2027-12-31', 1),
('FIRST50', 'Fixed', 50, 200, '2027-12-31', 1),
('SAVE20', 'Percentage', 20, 300, '2027-12-31', 1),
('FLAT100', 'Fixed', 100, 500, '2027-12-31', 1),
('FOOD15', 'Percentage', 15, 150, '2027-12-31', 1),
('NEWUSER', 'Fixed', 75, 250, '2027-12-31', 1),
('TASTY25', 'Percentage', 25, 400, '2027-12-31', 1),
('DEAL30', 'Fixed', 30, 100, '2027-12-31', 1),
('SPECIAL50', 'Percentage', 50, 600, '2027-12-31', 1),
('FREESHIP', 'Fixed', 40, 200, '2027-12-31', 1);


USE FoodDeliveryDB1;
GO

SELECT * FROM Orders;

SELECT COUNT(*) AS Total_Orders
FROM Orders;


SELECT MenuItem_ID FROM MenuItems ORDER BY MenuItem_ID;

SELECT Partner_ID FROM DeliveryPartners ORDER BY Partner_ID;


INSERT INTO Order_Items
(Order_ID, MenuItem_ID, Quantity, Item_Price)
VALUES
(4, 1, 1, 250),
(5, 2, 1, 120),
(6, 3, 1, 300),
(7, 4, 1, 220),
(8, 5, 1, 180),
(9, 6, 1, 240),
(10, 7, 1, 100),
(11, 8, 1, 150),
(12, 9, 1, 120),
(13, 10, 1, 90);


INSERT INTO Payments
(Order_ID, Payment_Method, Payment_Status, Amount)
VALUES
(4, 'UPI', 'Success', 250),
(5, 'Card', 'Success', 120),
(6, 'Cash', 'Success', 300),
(7, 'UPI', 'Success', 220),
(8, 'Card', 'Success', 180),
(9, 'UPI', 'Success', 240),
(10, 'Cash', 'Success', 100),
(11, 'Card', 'Success', 150),
(12, 'UPI', 'Success', 120),
(13, 'Cash', 'Success', 90);


INSERT INTO Deliveries
(Order_ID, Partner_ID, Pickup_Time, Delivered_Time, Delivery_Status)
VALUES
(4, 1, '2026-11-01 12:00', '2026-11-01 12:30', 'Delivered'),
(5, 2, '2026-11-01 13:00', '2026-11-01 13:35', 'Delivered'),
(6, 3, '2026-11-01 14:00', '2026-11-01 14:40', 'Delivered'),
(7, 4, '2026-11-01 15:00', '2026-11-01 15:30', 'Delivered'),
(8, 5, '2026-11-01 16:00', '2026-11-01 16:35', 'Delivered'),
(9, 6, '2026-11-02 12:00', '2026-11-02 12:25', 'Delivered'),
(10, 7, '2026-11-02 13:00', '2026-11-02 13:40', 'Delivered'),
(11, 8, '2026-11-02 14:00', '2026-11-02 14:30', 'Delivered'),
(12, 9, '2026-11-02 15:00', '2026-11-02 15:35', 'Delivered'),
(13, 10, '2026-11-02 16:00', '2026-11-02 16:30', 'Delivered');



INSERT INTO Reviews
(User_ID, Restaurant_ID, Order_ID, Rating, Review_Comment)
VALUES
(1, 1, 4, 5, 'Excellent food and service'),
(2, 2, 5, 4, 'Good burger'),
(3, 3, 6, 5, 'Delicious biryani'),
(4, 4, 7, 4, 'Tasty noodles'),
(5, 5, 8, 5, 'Amazing chocolate cake'),
(6, 6, 9, 4, 'Good coffee'),
(7, 7, 10, 5, 'Authentic dosa'),
(8, 8, 11, 4, 'Nice paneer curry'),
(9, 9, 12, 3, 'Average fries'),
(10, 10, 13, 5, 'Fresh and healthy salad');




SELECT 'Users' AS Table_Name, COUNT(*) AS Total_Records FROM Users
UNION ALL
SELECT 'Addresses', COUNT(*) FROM Addresses
UNION ALL
SELECT 'Restaurants', COUNT(*) FROM Restaurants
UNION ALL
SELECT 'Categories', COUNT(*) FROM Categories
UNION ALL
SELECT 'MenuItems', COUNT(*) FROM MenuItems
UNION ALL
SELECT 'Orders', COUNT(*) FROM Orders
UNION ALL
SELECT 'Order_Items', COUNT(*) FROM Order_Items
UNION ALL
SELECT 'Payments', COUNT(*) FROM Payments
UNION ALL
SELECT 'DeliveryPartners', COUNT(*) FROM DeliveryPartners
UNION ALL
SELECT 'Deliveries', COUNT(*) FROM Deliveries
UNION ALL
SELECT 'Reviews', COUNT(*) FROM Reviews
UNION ALL
SELECT 'Coupons', COUNT(*) FROM Coupons;

