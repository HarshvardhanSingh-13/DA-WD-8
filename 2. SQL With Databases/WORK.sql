-- WORK

-- Objective:
-- Create a database for managing an online bookstore. You will need to create a table to store details of books available in the bookstore. 
-- The table should have constraints like AUTO_INCREMENT, NOT NULL, DEFAULT, and DATETIME


-- Instructions:

-- Create a database named Bookstore.

-- Create a table named Books with the following columns:

-- book_id: Auto-incrementing integer, the primary key.
-- title: Text column, cannot be null.
-- author: Text column, cannot be null.
-- price: FLOAT column, cannot be null, with a default value of 9.99.
-- published_date: DateTime column, cannot be null.
-- quantity_in_stock: Integer column, cannot be null, with a default value of 10.
-- Insert the following data into the Books table:

-- Book 1: Title - "Learn SQL", Author - "John Doe", Price - 15.99, Published Date - 2022-05-15, Quantity in Stock - 50
-- Book 2: Title - "Python for Beginners", Author - "Jane Smith", Price - 25.99, Published Date - 2023-01-10, Quantity in Stock - 20
-- Book 3: Title - "Mastering Databases", Author - "Robert Brown", Price - 29.99, Published Date - 2021-11-05, Quantity in Stock - 35
-- Book 4: Title - "Advanced SQL", Author - "Emily Davis", Price - 19.99, Published Date - 2023-03-20, Quantity in Stock - 40
-- Book 5: Title - "Database Design Basics", Author - "Chris Johnson", Price - 18.99, Published Date - 2022-07-22, Quantity in Stock - 60
-- Book 6: Title - "Hello World", Author - "Charles Davidson"


DROP Database if exists Bookstore;
CREATE DATABASE if not exists Bookstore;
USE Bookstore;

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price FLOAT DEFAULT 9.99 NOT NULL,
    published_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    quantity_in_stock INT DEFAULT 10 NOT NULL
);
INSERT INTO Books (title, author, price, published_date, quantity_in_stock)
VALUES
('Learn SQL', 'John Doe', 15.99, '2022-05-15 00:00:00', 50),
('Python for Beginners', 'Jane Smith', 25.99, '2023-01-10 00:00:00', 20),
('Mastering Databases', 'Robert Brown', 29.99, '2021-11-05 00:00:00', 35),
('Advanced SQL', 'Emily Davis', 19.99, '2023-03-20 00:00:00', 40),
('Database Design Basics', 'Chris Johnson', 18.99, '2022-07-22 00:00:00', 60);

INSERT INTO Books (title, author) VALUES
("Hello World", "Charles Davidson");

select * from books;