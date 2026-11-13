CREATE DATABASE IF NOT EXISTS store_management;
USE store_management;

CREATE TABLE Governorates (
    governorate_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE Stores (
    store_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    address VARCHAR(225) NOT NULL,
    governorate_id INT NOT NULL,
    FOREIGN KEY (governorate_id) REFERENCES Governorates(governorate_id)
);

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(255) NOT NULL,
    supplier_phone VARCHAR(45),
    supplier_email VARCHAR(255),
    supplier_brief_data VARCHAR(255)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    product_code VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    price DECIMAL(6,2),
    supplier_id INT NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

CREATE TABLE Products_has_Stores (
    product_id INT NOT NULL,
    store_id INT NOT NULL,
    PRIMARY KEY (product_id, store_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);
