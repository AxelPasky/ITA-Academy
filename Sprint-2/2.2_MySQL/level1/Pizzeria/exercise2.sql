DROP DATABASE IF EXISTS pizzeria;
CREATE DATABASE pizzeria CHARACTER SET utf8mb4;

-------------------- CLEANING ------------------------
DROP TABLE IF EXISTS orders_details;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS pizza_category;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS shop;

---------------- TABLES ----------------------------

CREATE TABLE IF NOT EXISTS client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL,
    street_number VARCHAR(10) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    city VARCHAR(50) NOT NULL,
    province VARCHAR(50) NOT NULL,
    phone_number VARCHAR(25) NOT NULL
);


CREATE TABLE IF NOT EXISTS shop (
    id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(100) NOT NULL,
    street_number VARCHAR(10) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    city VARCHAR(50) NOT NULL,
    province VARCHAR(50) NOT NULL

);


CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    nif CHAR(9) NOT NULL UNIQUE,
    phone_number VARCHAR(25) NOT NULL,
    job_type ENUM('chef','delivery'),
    shop_id INT UNSIGNED NOT NULL,

    FOREIGN KEY (shop_id) REFERENCES shop(id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS pizza_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type ENUM('Hamburger', 'Pizza', 'Drink') NOT NULL,
    pizza_category_id INT UNSIGNED NULL,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NULL,
    price DECIMAL(8, 2) NOT NULL,

    FOREIGN KEY (pizza_category_id) REFERENCES pizza_category(id)
        ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_datetime DATETIME NOT NULL,
    client_id INT UNSIGNED NOT NULL,
    shop_id INT UNSIGNED NOT NULL,
    place ENUM('home', 'shop'),
    total_price DECIMAL(8, 2) NOT NULL,
    delivery_employee_id INT UNSIGNED NULL,
    delivery_timestamp DATETIME NULL,

    FOREIGN KEY (client_id) REFERENCES client(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (shop_id) REFERENCES shop(id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (delivery_employee_id) REFERENCES employees(id)
        ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS orders_details (
    order_id INT UNSIGNED NOT NULL,
    product_id INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 1,
    unit_price DECIMAL(8, 2) NOT NULL,

    PRIMARY KEY (order_id, product_id),

    FOREIGN KEY (order_id) REFERENCES orders(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (product_id) REFERENCES product(id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

