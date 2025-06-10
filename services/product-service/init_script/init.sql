
CREATE DATABASE IF NOT EXISTS product_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE product_db;


CREATE TABLE product (
    product_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL, 
    category VARCHAR(255),
    description TEXT, 
    img_url VARCHAR(2048) 
);

INSERT INTO product (product_id, name, price, category, description, img_url) VALUES
(1, 'Burger Bò Phô Mai', 45000.00, 'burger', 'Burger bò kết hợp với phô mai béo ngậy', 'https://static.kfcvietnam.com.vn/images/items/lg/Burger-Zinger.jpg?v=L7DYr4'),
(2, 'Gà Rán Giòn Cay', 52000.00, 'gà rán', 'Miếng gà rán giòn tan, vị cay nồng', 'https://static.kfcvietnam.com.vn/images/items/lg/1-Fried-Chicken.jpg?v=L7DYr4'),
(3, 'Pepsi Lon 330ml', 12000.00, 'nước ngọt', 'Nước ngọt Pepsi giải khát sảng khoái', 'https://static.kfcvietnam.com.vn/images/items/lg/PEPSI_CAN.jpg?v=L7DYr4'),
(4, 'Mì Ý Bò Bằm', 60000.00, 'mì', 'Sợi mì Ý mềm mịn cùng sốt bò bằm đậm đà', 'https://static.kfcvietnam.com.vn/images/items/lg/MI-Y-GA-VIEN.jpg?v=L7DYr4'),
(5, 'Cơm Gà Sốt Teriyaki', 55000.00, 'cơm', 'Cơm trắng dẻo ăn kèm gà sốt teriyaki thơm ngon', 'https://static.kfcvietnam.com.vn/images/items/lg/Rice-Teriyaki.jpg?v=3lbw1g'),
(6, 'Burger Gà Giòn', 47000.00, 'burger', 'Burger kẹp gà rán giòn và rau tươi', 'https://static.kfcvietnam.com.vn/images/items/lg/Burger-Flava.jpg?v=3lbw1g'),
(7, 'Nước Cam Ép', 18000.00, 'nước ngọt', 'Nước cam tươi mát không đường hóa học', 'https://static.kfcvietnam.com.vn/images/items/lg/7UP_CAN.jpg?v=3lbw1g'),
(8, 'Salad Hạt', 39000.00, 'salad', 'Salad Hạt', 'https://static.kfcvietnam.com.vn/images/items/lg/SALAD-HAT.jpg?v=3lbw1g'),
(9, 'Khoai Tây Chiên', 20000.00, 'Khoai Tây', 'Khoai Tây Chiên', 'https://static.kfcvietnam.com.vn/images/items/lg/FF-L.jpg?v=3lbw1g');