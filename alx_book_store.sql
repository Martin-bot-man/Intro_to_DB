CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE Books(
    id INT book_id(PRIMARY KEY),
    title VARCHAR(130) NOT NULL,
    FOREIGN KEY (book_id) REFERENCES Authors(id),
    price DOUBLE NOT NULL,
    Publication_date DATE NOT NULL
);

CREATE TABLE Authors(
    author_id INT PRIMARY KEY AUTO_INCREMENT,,
    author_name VARCHAR(215) NOT NULL
);
CREATE Customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL UNIQUE,
    address TEXT NOT NULL
);
CREATE Orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
);
CREATE Order_Details(
    order_details INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id), 
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE NOT NULL

)
