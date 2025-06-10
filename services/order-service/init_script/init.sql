
CREATE DATABASE IF NOT EXISTS order_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE order_db;

CREATE TABLE IF NOT EXISTS orders (
    order_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    total_amount FLOAT NOT NULL,
    order_date DATE NOT NULL,
    order_type VARCHAR(255),
    order_status VARCHAR(255),
    customer_id BIGINT,
    voucher_id VARCHAR(255),
    shipping_address VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS order_detail (
    order_detail_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id BIGINT NOT NULL,
    product_id BIGINT,
    quantity INT NOT NULL,
    price FLOAT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);