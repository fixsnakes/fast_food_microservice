
CREATE DATABASE IF NOT EXISTS user_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE user_db;


CREATE TABLE customer (
    customer_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255),
    password VARCHAR(255) NOT NULL
);

INSERT INTO customer (customer_id, fullname, email, phone, address, password) VALUES
(4, 'Lê Quang Hiếu', 'quanghieu@gmail.com', '0912345671', '101 Đường Phan Đình Phùng, TP.HCM', 'password101'),
(5, 'Phạm Thị Lan', 'lanpham@example.com', '0981234567', '202 Đường Hòa Bình, Hà Nội', 'password102'),
(7, 'Nguyễn Tiến Dũng', 'tiendung@example.com', '0978901234', '404 Đường Lê Duẩn, TP.HCM', 'password104'),
(9, 'Đoàn Minh Tuấn', 'minhtuan@example.com', '0987654322', '606 Đường Phạm Văn Đồng, Hà Nội', 'password106'),
(11, 'Phan Quốc Duy', 'quocduy@example.com', '0912345673', '808 Đường Lê Quang Đạo, TP.HCM', 'password108'),
(12, 'Vũ Minh Tâm', 'minhtam@example.com', '0923456790', '909 Đường Nguyễn Công Trứ, Hà Nội', 'password109'),
(13, 'Ngô Thị Mai Lan', 'mailan@example.com', '0934567891', '1010 Đường Nguyễn Du, TP.HCM', 'password110'),
(14, 'Trần Thiên Hồng', 'thienhong@example.com', '0945678901', '111 Đường Hai Bà Trưng, Đà Nẵng', 'password111'),
(15, 'Lê Minh Khánh', 'minhkhanh@example.com', '0901234567', '222 Đường Nguyễn Thiện Thuật, TP.HCM', 'password112'),
(16, 'Hoàng Thị Như Quỳnh', 'nhuquynh@example.com', '0987654323', '333 Đường Lý Thường Kiệt, Hà Nội', 'password113'),
(18, 'Trương Ngọc Thảo', 'ngocthao@example.com', '0934567892', '555 Đường Lê Lai, TP.HCM', 'password115'),
(19, 'Đào Tùng Lâm', 'lamaaa@example.com', '0339746596', '666 Đường Bạch Đằng, Hà Nội', 'Lamthao1');