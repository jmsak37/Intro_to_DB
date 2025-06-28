-- alx_book_store.sql

CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- authors table
CREATE TABLE authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(215) NOT NULL
);

-- books table
CREATE TABLE books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(130) NOT NULL,
  author_id INT NOT NULL,
  price DOUBLE,
  publication_date DATE,
  FOREIGN KEY (author_id)
    REFERENCES authors(author_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- customers table
CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR(215) NOT NULL,
  address TEXT
);

-- orders table
CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  order_date DATE,
  FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- order_details table
CREATE TABLE order_details (
  orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  book_id INT NOT NULL,
  quantity DOUBLE,
  FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (book_id)
    REFERENCES books(book_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
