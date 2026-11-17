CREATE DATABASE FoodDeliveryDB1;
USE FoodDeliveryDB1;
SELECT DB_NAME() AS CurrentDatabase;



CREATE TABLE Users
(
    User_ID INT PRIMARY KEY IDENTITY(1,1),
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    Gender VARCHAR(10),
    Created_At DATETIME DEFAULT GETDATE()
);



CREATE TABLE Addresses
(
    Address_ID INT PRIMARY KEY IDENTITY(1,1),
    User_ID INT NOT NULL,
    House_No VARCHAR(20),
    Street VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Pincode VARCHAR(10),
    Address_Type VARCHAR(20),

    CONSTRAINT FK_Addresses_Users
    FOREIGN KEY (User_ID)
    REFERENCES Users(User_ID)
);



CREATE TABLE Restaurants
(
    Restaurant_ID INT PRIMARY KEY IDENTITY(1,1),
    Restaurant_Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(200),
    City VARCHAR(50),
    Rating DECIMAL(2,1),
    Is_Active BIT DEFAULT 1
);



CREATE TABLE Categories
(
    Category_ID INT PRIMARY KEY IDENTITY(1,1),
    Category_Name VARCHAR(50) UNIQUE NOT NULL,
    Description VARCHAR(200)
);



CREATE TABLE MenuItems
(
    MenuItem_ID INT PRIMARY KEY IDENTITY(1,1),

    Restaurant_ID INT NOT NULL,
    Category_ID INT NOT NULL,

    Item_Name VARCHAR(100) NOT NULL,
    Description VARCHAR(200),

    Price DECIMAL(10,2) NOT NULL,
    Is_Available BIT DEFAULT 1,

    CONSTRAINT FK_MenuItems_Restaurants
    FOREIGN KEY (Restaurant_ID)
    REFERENCES Restaurants(Restaurant_ID),

    CONSTRAINT FK_MenuItems_Categories
    FOREIGN KEY (Category_ID)
    REFERENCES Categories(Category_ID)
);


CREATE TABLE Orders
(
    Order_ID INT PRIMARY KEY IDENTITY(1,1),

    User_ID INT NOT NULL,
    Restaurant_ID INT NOT NULL,
    Address_ID INT NOT NULL,

    Order_Date DATETIME DEFAULT GETDATE(),

    Total_Amount DECIMAL(10,2) NOT NULL,

    Order_Status VARCHAR(30) DEFAULT 'Pending',

    CONSTRAINT FK_Orders_Users
    FOREIGN KEY (User_ID)
    REFERENCES Users(User_ID),

    CONSTRAINT FK_Orders_Restaurants
    FOREIGN KEY (Restaurant_ID)
    REFERENCES Restaurants(Restaurant_ID),

    CONSTRAINT FK_Orders_Addresses
    FOREIGN KEY (Address_ID)
    REFERENCES Addresses(Address_ID)
);



CREATE TABLE Order_Items
(
    Order_Item_ID INT PRIMARY KEY IDENTITY(1,1),

    Order_ID INT NOT NULL,
    MenuItem_ID INT NOT NULL,

    Quantity INT NOT NULL,
    Item_Price DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_OrderItems_Orders
    FOREIGN KEY (Order_ID)
    REFERENCES Orders(Order_ID),

    CONSTRAINT FK_OrderItems_MenuItems
    FOREIGN KEY (MenuItem_ID)
    REFERENCES MenuItems(MenuItem_ID)
);



CREATE TABLE Payments
(
    Payment_ID INT PRIMARY KEY IDENTITY(1,1),

    Order_ID INT NOT NULL,

    Payment_Date DATETIME DEFAULT GETDATE(),

    Payment_Method VARCHAR(30) NOT NULL,

    Payment_Status VARCHAR(30) DEFAULT 'Pending',

    Amount DECIMAL(10,2) NOT NULL,

    CONSTRAINT FK_Payments_Orders
    FOREIGN KEY (Order_ID)
    REFERENCES Orders(Order_ID)
);



CREATE TABLE DeliveryPartners
(
    Partner_ID INT PRIMARY KEY IDENTITY(1,1),

    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,

    Phone VARCHAR(15) UNIQUE,

    Vehicle_Type VARCHAR(30),

    Vehicle_Number VARCHAR(20) UNIQUE,

    Is_Available BIT DEFAULT 1
);



CREATE TABLE Deliveries
(
    Delivery_ID INT PRIMARY KEY IDENTITY(1,1),

    Order_ID INT NOT NULL,
    Partner_ID INT NOT NULL,

    Pickup_Time DATETIME,
    Delivered_Time DATETIME,

    Delivery_Status VARCHAR(30) DEFAULT 'Assigned',

    CONSTRAINT FK_Deliveries_Orders
    FOREIGN KEY (Order_ID)
    REFERENCES Orders(Order_ID),

    CONSTRAINT FK_Deliveries_Partners
    FOREIGN KEY (Partner_ID)
    REFERENCES DeliveryPartners(Partner_ID)
);


CREATE TABLE Reviews
(
    Review_ID INT PRIMARY KEY IDENTITY(1,1),

    User_ID INT NOT NULL,
    Restaurant_ID INT NOT NULL,
    Order_ID INT NOT NULL,

    Rating INT NOT NULL,

    Review_Comment VARCHAR(500),

    Review_Date DATETIME DEFAULT GETDATE(),

    CONSTRAINT FK_Reviews_Users
    FOREIGN KEY (User_ID)
    REFERENCES Users(User_ID),

    CONSTRAINT FK_Reviews_Restaurants
    FOREIGN KEY (Restaurant_ID)
    REFERENCES Restaurants(Restaurant_ID),

    CONSTRAINT FK_Reviews_Orders
    FOREIGN KEY (Order_ID)
    REFERENCES Orders(Order_ID)
);


CREATE TABLE Coupons
(
    Coupon_ID INT PRIMARY KEY IDENTITY(1,1),

    Coupon_Code VARCHAR(30) UNIQUE NOT NULL,

    Discount_Type VARCHAR(20) NOT NULL,

    Discount_Value DECIMAL(10,2) NOT NULL,

    Min_Order_Amount DECIMAL(10,2) DEFAULT 0,

    Expiry_Date DATE,

    Is_Active BIT DEFAULT 1,

    CONSTRAINT CK_Coupons_DiscountType
    CHECK (Discount_Type IN ('Percentage', 'Fixed')),

    CONSTRAINT CK_Coupons_DiscountValue
    CHECK (Discount_Value > 0)
);