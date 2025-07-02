CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE Books(
    id INT book_id(PRIMARY KEY),
    title VARCHAR(130) NOT NULL,
    FOREIGN KEY (book_id) REFERENCES Authors(id)
);

CREATE TABLE Authors(
    author_id INT PRIMARY KEY AUTO_INCREMENT,,
    author_name VARCHAR(215) NOT NULL,
);
CREATE Customers(
    id INT customer_id(PRIMARY KEY),
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL UNIQUE,
    address TEXT NOT NULL,
);
CREATE Orders(
    id INT order_id(PRIMARY KEY),
    FOREIGN KEY (customer_id) REFERENCES Customers(id),
    order_date DATE,
);
CREATE Order_Details(
    id INT order_detail_id(PRIMARY KEY),
    FOREIGN KEY (order_id) REFERENCES Order(id),
    quantity DOUBLE NOT NULL,

)
