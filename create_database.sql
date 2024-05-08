-- Create employees table
CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	start_date DATE,
	gender VARCHAR(1), --"M"/"F" (Male/Female)
	salary INT
);

-- Create locations table
CREATE TABLE locations (
	location_id INT PRIMARY KEY,
	city VARCHAR(50)
);

-- Create shops table
CREATE TABLE shops (
	shop_id INT PRIMARY KEY,
	shopname VARCHAR(50)
);

-- Create Suppliers table 
CREATE TABLE suppliers (
	supplier_id INT PRIMARY KEY,
	supplier_name VARCHAR(50)
);

-- Create Coffee type table
CREATE TABLE coffee_Type (
	coffee_type_id INT PRIMARY KEY,
	coffee_type VARCHAR(20)
);

-- Create Countries table
CREATE TABLE countries (
	country_id INT PRIMARY KEY,
	country_name VARCHAR(20)
);

-- Create Menu table
CREATE TABLE menu (
	item_id INT PRIMARY KEY,
	item_name VARCHAR(20),
	description VARCHAR(50)
);

-- Create Currency table
CREATE TABLE currency (
	currency_id INT PRIMARY KEY,
	currency_type VARCHAR(10)
);


-- Inserting dummy data 
-- Insert dummy data into employees table
INSERT INTO employees (employee_id, first_name, last_name, email, start_date, gender, salary)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', '2020-01-01', 'M', 50000),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '2020-02-15', 'F', 55000),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '2020-03-20', 'M', 48000),
    (4, 'Emily', 'Brown', 'emily.brown@example.com', '2020-04-10', 'F', 52000),
    (5, 'James', 'Wilson', 'james.wilson@example.com', '2020-05-05', 'M', 53000),
    (6, 'Emma', 'Martinez', 'emma.martinez@example.com', '2020-06-15', 'F', 54000),
    (7, 'William', 'Taylor', 'william.taylor@example.com', '2020-07-20', 'M', 49000),
    (8, 'Olivia', 'Anderson', 'olivia.anderson@example.com', '2020-08-10', 'F', 51000),
    (9, 'Alexander', 'Thomas', 'alexander.thomas@example.com', '2020-09-05', 'M', 50000),
    (10, 'Sophia', 'Hernandez', 'sophia.hernandez@example.com', '2020-10-15', 'F', 52000);

-- Insert dummy data into locations table
INSERT INTO locations (location_id, city)
VALUES
    (1, 'London'),
    (2, 'New York'),
    (3, 'Toronto'),
    (4, 'Manchester'),
    (5, 'Los Angeles'),
    (6, 'Vancouver'),
    (7, 'Birmingham'),
    (8, 'Chicago'),
    (9, 'Montreal'),
    (10, 'Liverpool');

-- Insert dummy data into shops table
INSERT INTO shops (shop_id, shopname)
VALUES
    (1, 'The Daily Grind'),
    (2, 'Espresso Junction'),
    (3, 'Café Noir'),
    (4, 'Mocha House'),
    (5, 'Perk Avenue'),
    (6, 'Brewed Awakening'),
    (7, 'Bean & Brew'),
    (8, 'Steamy Beans'),
    (9, 'Cuppa Coffee'),
    (10, 'Grounds & Co.');

-- Insert dummy data into suppliers table
INSERT INTO suppliers (supplier_id, supplier_name)
VALUES
    (1, 'BeanCo'),
    (2, 'Coffee Empire'),
    (3, 'Roast Masters'),
    (4, 'Arabica Imports'),
    (5, 'Global Beans'),
    (6, 'Café Suppliers'),
    (7, 'Java Distributors'),
    (8, 'Mocha Ltd.'),
    (9, 'Espresso Imports'),
    (10, 'Bean Kingdom');

-- Insert dummy data into coffee_Type table
INSERT INTO coffee_Type (coffee_type_id, coffee_type)
VALUES
    (1, 'Arabica'),
    (2, 'Robusta'),
    (3, 'Liberica'),
    (4, 'Excelsa'),
    (5, 'Blue Mountain');

-- Insert dummy data into countries table
INSERT INTO countries (country_id, country_name)
VALUES
    (1, 'United Kingdom'),
    (2, 'United States'),
    (3, 'Canada');
    
-- Altering a tables attribute
ALTER TABLE menu
ALTER COLUMN description SET DATA TYPE VARCHAR(100);

-- Insert dummy data into menu table
INSERT INTO menu (item_id, item_name, description)
VALUES
    (1, 'Espresso', 'A single shot of espresso'),
    (2, 'Latte', 'Espresso with steamed milk'),
    (3, 'Cappuccino', 'Espresso with equal parts steamed milk and foam'),
    (4, 'Americano', 'Espresso with hot water'),
    (5, 'Mocha', 'Espresso with chocolate and steamed milk'),
    (6, 'Flat White', 'Espresso with velvety microfoam'),
    (7, 'Macchiato', 'Espresso "stained" with a small amount of steamed milk'),
    (8, 'Affogato', 'Espresso poured over a scoop of vanilla ice cream'),
    (9, 'Irish Coffee', 'Coffee with Irish whiskey and cream'),
    (10, 'Cold Brew', 'Coffee brewed with cold water for a smooth taste'),
    (11, 'Pour Over', 'Coffee brewed by pouring hot water over coffee grounds'),
    (12, 'French Press', 'Coffee brewed by steeping coarse grounds in hot water'),
    (13, 'Café au Lait', 'Coffee with steamed milk'),
    (14, 'Turkish Coffee', 'Coffee brewed with finely ground coffee beans and sugar'),
    (15, 'Iced Coffee', 'Chilled coffee served over ice'),
    (16, 'Espresso Martini', 'A cocktail made with espresso, vodka, and coffee liqueur'),
    (17, 'Vietnamese Coffee', 'Coffee with sweetened condensed milk'),
    (18, 'Coffee Cake', 'A sweet cake flavored with coffee'),
    (19, 'Coffee Smoothie', 'A refreshing smoothie made with coffee and milk'),
    (20, 'Coffee Ice Cream', 'Creamy ice cream with coffee flavoring');

-- Insert dummy data into currency table
INSERT INTO currency (currency_id, currency_type)
VALUES
    (1, 'GBP'),
    (2, 'USD'),
    (3, 'CAD');

-- Create a shop location table
CREATE TABLE shop_location(
	shoplocation_id INT PRIMARY KEY
);

-- Create a shop location table
CREATE TABLE shop_location(
	shoplocation_id INT PRIMARY KEY,
	location_id INT,
	shop_id INT,
	country_id INT
);

-- Add foreign to the shop locations
ALTER TABLE shop_location
ADD CONSTRAINT fk_location_id
FOREIGN KEY (location_id) 
REFERENCES locations(location_id),
ADD CONSTRAINT fk_shop_id
FOREIGN KEY (shop_id)
REFERENCES shops(shop_id),
ADD CONSTRAINT fk_country_id
FOREIGN KEY (country_id) 
REFERENCES countries(country_id);
