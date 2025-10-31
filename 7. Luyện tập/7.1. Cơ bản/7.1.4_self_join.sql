-- 7.1.4 SELF JOIN — 15 bài tập (chỉ câu hỏi, không có đáp án)
-- Tình huống gợi ý cho self join:
--  - So sánh 2 bản ghi cùng bảng theo ngày/giờ (customer_purchases theo transaction_time)
--  - So sánh giá/tồn kho giữa 2 vendor cho cùng product và cùng ngày (vendor_inventory)
--  - So sánh booth cùng ngày (vendor_booth_assignments) để tìm vendor chia sẻ booth khác nhau theo ngày

-- Bài 1: Tìm các cặp giao dịch của cùng một customer trong cùng một ngày (self join customer_purchases), khác transaction_time.

-- Bài 2: Tìm các cặp giao dịch của cùng một product trong cùng một ngày nhưng khác customer.

-- Bài 3: Tìm các cặp vendor bán cùng một product trong cùng một market_date (self join vendor_inventory) để so sánh original_price.

-- Bài 4: Với mỗi product trong một ngày, xác định vendor có original_price cao hơn vendor khác (so sánh đôi).

-- Bài 5: Tìm các cặp booth khác nhau được gán cho cùng một vendor trong cùng một market_date (self join vendor_booth_assignments).

-- Bài 6: Tìm các cặp vendor khác nhau chia sẻ cùng một booth trong cùng market_date.

-- Bài 7: Tìm các cặp product trong cùng category có tên bắt đầu bằng cùng một chữ cái (self join product).

-- Bài 8: Tìm các cặp ngày chợ liên tiếp (self join market_date_info theo market_date kế tiếp) trong cùng một season.

-- Bài 9: Tìm các cặp khách hàng có cùng ZIP (self join customer) nhưng khác họ (last name).

-- Bài 10: Tìm các cặp giao dịch trong cùng một giờ (self join customer_purchases, cùng hour(transaction_time)) nhưng khác product.

-- Bài 11: So sánh quantity trong vendor_inventory giữa hai ngày liên tiếp cho cùng vendor và product.

-- Bài 12: Tìm các cặp vendor có cùng vendor_type và có cùng ngày tham gia chợ (self join vendor + vendor_booth_assignments).

-- Bài 13: Trong một ngày, tìm các cặp product có original_price bằng nhau (self join vendor_inventory theo price).

-- Bài 14: Tìm các cặp customer có cùng họ (last name) nhưng khác ZIP.

-- Bài 15: Tìm các cặp ngày chợ có cùng market_week và market_year nhưng khác market_day (self join market_date_info).


