
CREATE DATABASE IF NOT EXISTS voucher_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE voucher_db;


CREATE TABLE voucher (
    voucher_id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(50) UNIQUE NOT NULL,
    discount DECIMAL(5, 2) NOT NULL, -- Assuming discount can be a percentage (e.g., 10.00 for 10%)
    from_date DATE NOT NULL,
    to_date DATE NOT NULL
);

INSERT INTO voucher (voucher_id, code, discount, from_date, to_date) VALUES
(1, 'VOUCHER10', 10.00, '2025-05-01', '2025-05-31'),
(2, 'VOUCHER20', 20.00, '2025-06-01', '2025-06-30'),
(3, 'DISCOUNT15', 15.00, '2025-05-15', '2025-06-15'),
(4, 'SUMMER30', 30.00, '2025-06-01', '2025-06-15'),
(5, 'WELCOME5', 5.00, '2025-05-10', '2025-05-20');