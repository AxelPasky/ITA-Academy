DROP DATABASE IF EXISTS optica;
CREATE DATABASE optica CHARACTER SET utf8mb4;

----------------- CLEANING ----------------------------

DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS glasses;
DROP TABLE IF EXISTS brands;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS supplier;


----------------- TABLES --------------------------------

CREATE TABLE IF NOT EXISTS supplier (
    supplier_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,
    street VARCHAR(150) NOT NULL,
    street_number VARCHAR(20),
    floor VARCHAR(10),
    door VARCHAR(10),
    city VARCHAR(50) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    country VARCHAR(50) NOT NULL,
    phone VARCHAR(25) NOT NULL,
    fax VARCHAR(25),
    nif CHAR(9) NOT NULL UNIQUE 
);

CREATE TABLE IF NOT EXISTS client (
    client_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(255) NOT NULL,
    street VARCHAR(150),
    street_number VARCHAR(20),
    floor VARCHAR(10),
    door VARCHAR(10),
    city VARCHAR(50),
    postal_code VARCHAR(10),
    country VARCHAR(50),
    phone_number VARCHAR(25) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    date_sign_in DATE NOT NULL,
    recommended_by_client_id INT UNSIGNED NULL, 

   
    FOREIGN KEY (recommended_by_client_id)
        REFERENCES client(client_id)
        ON UPDATE CASCADE 
);


CREATE TABLE IF NOT EXISTS brands (
    brand_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(100) NOT NULL UNIQUE,               
    supplier_id INT UNSIGNED NOT NULL,              

    
    FOREIGN KEY (supplier_id)
        REFERENCES supplier(supplier_id) 
        ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS glasses (
    glasses_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    brand_id INT UNSIGNED NOT NULL,                  
    prescription_right VARCHAR(50) NOT NULL,         
    prescription_left VARCHAR(50) NOT NULL,          
    frame_type ENUM('rimless', 'acetate', 'metal') NOT NULL, 
    frame_color VARCHAR(50) NOT NULL,                
    lens_color VARCHAR(50) NOT NULL,                 
    price DECIMAL(8, 2) NOT NULL,                    

    
    FOREIGN KEY (brand_id)
        REFERENCES brands(brand_id)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS employees (
    employee_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    first_name VARCHAR(100) NOT NULL,                 
    last_name VARCHAR(100) NOT NULL                  
);


CREATE TABLE IF NOT EXISTS sales (
    sale_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    glasses_id INT UNSIGNED NOT NULL,             
    client_id INT UNSIGNED NOT NULL,              
    employee_id INT UNSIGNED NOT NULL,            
    sale_price DECIMAL(8, 2) NOT NULL,           

    FOREIGN KEY (glasses_id) REFERENCES glasses(glasses_id)
        ON UPDATE CASCADE,
    FOREIGN KEY (client_id) REFERENCES client(client_id)
        ON UPDATE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
        ON UPDATE CASCADE
);

