INSERT INTO Product VALUES
(1, 'MacBook Air M1', 'Apple', 20000000, 10),
(2, 'iPhone 13', 'Apple', 18000000, 15),
(3, 'Laptop Dell XPS', 'Dell', 22000000, 8),
(4, 'Chuột Logitech', 'Logitech', 500000, 50),
(5, 'Bàn phím cơ', 'Razer', 1500000, 20);

INSERT INTO Customer VALUES
(1, 'Nguyen Van A', 'a@gmail.com', '0901234567', 'HCM'),
(2, 'Tran Thi B', 'b@gmail.com', NULL, 'Ha Noi'),
(3, 'Le Van C', 'c@gmail.com', '0912345678', 'Da Nang'),
(4, 'Pham Thi D', 'd@gmail.com', NULL, 'Can Tho'),
(5, 'Hoang Van E', 'e@gmail.com', '0987654321', 'Binh Duong');

INSERT INTO `Order` VALUES
(1, '2026-04-01', 38000000, 1),
(2, '2026-04-02', 18000000, 2),
(3, '2026-04-03', 22000000, 3),
(4, '2026-04-04', 500000, 4),
(5, '2026-04-05', 1500000, 5);

INSERT INTO Order_Detail VALUES
(1, 1, 1, 20000000),
(1, 2, 1, 18000000),
(2, 2, 1, 18000000),
(3, 3, 1, 22000000),
(4, 4, 1, 500000),
(5, 5, 1, 1500000);

UPDATE Product
SET price = price * 1.1
WHERE brand = 'Apple';

DELETE FROM Customer
WHERE phone IS NULL;
