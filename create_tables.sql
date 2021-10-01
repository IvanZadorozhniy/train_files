CREATE TABLE Users(
 	user_id INT PRIMARY KEY,
 	email VARCHAR(255),
 	password VARCHAR(255),
 	first_name VARCHAR(255),
 	last_name VARCHAR(255),
 	middle_name VARCHAR(255),
 	is_staff SMALLINT,
 	country VARCHAR(255),
 	city VARCHAR(255),
 	address TEXT
 );

 CREATE TABLE Carts(
 	cart_id INT PRIMARY KEY,
 	Users_user_id INT REFERENCES Users(user_id),
 	subtotal DECIMAL,
 	total DECIMAL,
 	timestamp TIMESTAMP(2)
 );

 CREATE TABLE Order_status(
 	order_status_id INT PRIMARY KEY,
 	status_name VARCHAR(255)
 );

 CREATE TABLE Orders(
 	order_id INT PRIMARY KEY,
 	Carts_cart_id INT REFERENCES Carts(cart_id),
 	Order_status_order_status_id INT REFERENCES Order_status(order_status_id),
 	shipping_total DECIMAL,
 	total DECIMAL,
 	created_at TIMESTAMP(2),
 	updated_at TIMESTAMP(2)
 );

 CREATE TABLE Categories(
 	category_id INT PRIMARY KEY,
 	category_title VARCHAR(255),
 	category_description TEXT
 );

 CREATE TABLE Products(
 	product_id INT PRIMARY KEY,
 	product_title VARCHAR(255),
 	product_description TEXT,
 	in_stock INT,
 	price FLOAT,
 	slug VARCHAR(45),
 	Categories_category_id INT REFERENCES Categories(category_id)
 );

CREATE TABLE Cart_product(
	Carts_card_id INT REFERENCES Carts(cart_id),
	Products_product_id INT REFERENCES Products(product_id)
);