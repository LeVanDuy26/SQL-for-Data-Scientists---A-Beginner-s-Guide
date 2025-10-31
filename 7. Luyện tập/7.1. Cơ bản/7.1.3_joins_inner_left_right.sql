-- 7.1.3 JOINS (INNER, LEFT, RIGHT) — 15 bài tập (chỉ câu hỏi, không có đáp án)
-- Bảng/khóa gợi ý:
--  - customer_purchases (product_id, vendor_id, market_date, customer_id, transaction_time)
--  - vendor_inventory (product_id, vendor_id, market_date)
--  - product (product_id, product_category_id)
--  - product_category (product_category_id)
--  - vendor (vendor_id)
--  - market_date_info (market_date)
--  - customer (customer_id)
--  - booth + vendor_booth_assignments (booth_number, vendor_id, market_date)

-- Bài 1 (INNER): Liệt kê 10 giao dịch gồm market_date, vendor_name, product_name, quantity, price, revenue.

-- Bài 2 (INNER): Doanh thu theo ngày và theo vendor_name.

-- Bài 3 (INNER): Doanh thu theo category (product_category_name) mỗi ngày.

-- Bài 4 (INNER): Với mỗi product_name, liệt kê original_price (từ vendor_inventory) theo từng market_date.

-- Bài 5 (LEFT): Hiển thị tất cả các bản ghi vendor_inventory và ghép LEFT với customer_purchases để tìm các dòng tồn kho không phát sinh bán (doanh thu NULL).

-- Bài 6 (LEFT): Danh sách tất cả vendor và tổng doanh thu của họ (nếu vendor chưa bán gì vẫn phải hiện với doanh thu NULL/0).

-- Bài 7 (LEFT): Danh sách tất cả sản phẩm và tổng quantity bán ra (nếu chưa bán thì vẫn hiện 0/NULL).

-- Bài 8 (LEFT): Danh sách tất cả ngày chợ (market_date_info) và tổng doanh thu trong ngày đó (nếu không có giao dịch vẫn hiện ngày).

-- Bài 9 (RIGHT): Dùng RIGHT JOIN để hiển thị mọi product_category và tổng doanh thu, kể cả category chưa có bán.

-- Bài 10 (INNER): Doanh thu theo ZIP khách hàng (join customer + zip_data).

-- Bài 11 (INNER): Bán theo khung giờ: market_date, giờ (trích từ transaction_time), vendor_name, revenue.

-- Bài 12 (INNER): Thêm market_season từ market_date_info để tính doanh thu theo season và category.

-- Bài 13 (LEFT): Liệt kê tất cả booth và tổng doanh thu phát sinh tại booth đó (qua vendor_booth_assignments → vendor → purchases). Booth chưa dùng vẫn hiện.

-- Bài 14 (INNER): Với mỗi vendor, liệt kê số lượng category khác nhau đã bán trong tháng 07/2019.

-- Bài 15 (LEFT): Liệt kê các product chưa bao giờ xuất hiện trong vendor_inventory (sản phẩm chưa được bày bán).


