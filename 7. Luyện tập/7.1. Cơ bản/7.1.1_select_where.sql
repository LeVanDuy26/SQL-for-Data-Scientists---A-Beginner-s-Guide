-- Active: 1760243738176@@127.0.0.1@3306@farmers_market
-- 7.1.1 SELECT & WHERE — 15 bài tập (chỉ câu hỏi, không có đáp án)
-- Schema tham chiếu: booth, customer, customer_purchases, market_date_info,
--                    product, product_category, vendor, vendor_inventory, zip_data

-- Bài 1: Liệt kê tất cả các cột từ bảng product.
SELECT * 
FROM product;
-- Bài 2: Liệt kê product_id, product_name cho các sản phẩm thuộc category 'Fresh Fruits & Vegetables'.
SELECT product_id, product_name
FROM product
INNER JOIN product_category ON product.product_category_id = product_category.product_category_id
WHERE product_category.product_category_name = 'Fresh Fruits & Vegetables';
-- Bài 3: Liệt kê product_id, product_name cho các sản phẩm có product_qty_type = 'unit'.
SELECT product_id, product_name
FROM product
WHERE product_qty_type = 'unit';
-- Bài 4: Liệt kê các khách hàng (customer_id, customer_first_name, customer_last_name) có customer_zip = '22801'.
SELECT customer_id, customer_first_name, customer_last_name
FROM customer
WHERE customer_zip = '22801';
-- Bài 5: Liệt kê các nhà bán (vendor_id, vendor_name) có vendor_type = 'Prepared Foods'.
SELECT vendor_id, vendor_name
FROM vendor
WHERE vendor_type = 'Prepared Foods';
-- Bài 6: Liệt kê các ngày chợ (market_date) diễn ra vào thứ Tư (market_day = 'Wednesday').
SELECT market_date
FROM market_date_info
WHERE market_day = 'Wednesday';
-- Bài 7: Liệt kê market_date và market_season là 'Summer/Early Fall'.
SELECT market_date, market_season
FROM market_date_info
WHERE market_season = 'Summer/Early Fall';
-- Bài 8: Liệt kê các booth thuộc booth_price_level = 'A' hoặc 'B'.
SELECT *
FROM booth
WHERE booth_price_level = 'A' OR booth_price_level = 'B';
-- Bài 9: Liệt kê các dòng tồn kho (vendor_inventory) mà original_price > 10.
SELECT *
FROM vendor_inventory
WHERE original_price > 10;
-- Bài 10: Liệt kê các giao dịch (customer_purchases) có quantity > 1.
SELECT *
FROM customer_purchases
WHERE quantity > 1;
-- Bài 11: Liệt kê các giao dịch trong tháng 07/2019 (dựa vào market_date) từ bảng customer_purchases.
SELECT *
FROM customer_purchases
WHERE market_date BETWEEN '2019-07-01' AND '2019-07-31';
-- Bài 12: Liệt kê các ngày chợ có market_rain_flag = 1 hoặc market_snow_flag = 1.
SELECT *
FROM market_date_info
WHERE market_rain_flag = 1 OR market_snow_flag = 1;
-- Bài 13: Liệt kê các sản phẩm có product_size IS NULL hoặc product_qty_type IS NULL.
SELECT *
FROM product
WHERE product_size IS NULL OR product_qty_type IS NULL;
-- Bài 14: Liệt kê customer_id, transaction_time từ customer_purchases trong khung giờ 08:00:00 đến 12:00:00.
SELECT customer_id, transaction_time
FROM customer_purchases
WHERE transaction_time BETWEEN '08:00:00' AND '12:00:00';
-- Bài 15: Liệt kê các dòng vendor_inventory có quantity BETWEEN 5 AND 15 (bao gồm biên).
SELECT *
FROM vendor_inventory
WHERE quantity BETWEEN 5 AND 15;
-- Bài 16: Liệt kê vendor_id, product_id từ vendor_inventory có market_date giữa '2019-07-01' và '2019-07-31'.
SELECT vendor_id, product_id
FROM vendor_inventory
WHERE market_date BETWEEN '2019-07-01' AND '2019-07-31';
-- Bài 17: Liệt kê các khách hàng có họ (customer_last_name) bắt đầu bằng chữ 'W' hoặc 'H'.
SELECT *
FROM customer
WHERE customer_last_name LIKE 'W%' OR customer_last_name LIKE 'H%'; -- LIKE 'W%' or LIKE 'H%'
-- Bài 18: Liệt kê các sản phẩm có tên chứa chuỗi 'Tomato' (không phân biệt hoa thường tùy hệ).
SELECT *
FROM product
WHERE product_name LIKE '%Tomato%';
-- Bài 19: Liệt kê các ngày chợ có market_min_temp >= 50 và market_max_temp >= 80.
SELECT *
FROM market_date_info
WHERE market_min_temp >= 50 AND market_max_temp >= 80;
-- Bài 20: Liệt kê các ZIP trong zip_data có median_household_income > 60000 hoặc percent_high_income > 0.05.
SELECT *
FROM zip_data
WHERE median_household_income > 60000 OR percent_high_income > 0.05;

