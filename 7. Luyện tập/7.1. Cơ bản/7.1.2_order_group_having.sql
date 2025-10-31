-- 7.1.2 ORDER BY, GROUP BY, HAVING — 15 bài tập (chỉ câu hỏi, không có đáp án)
-- Gợi ý bảng chính: customer_purchases (fact), vendor_inventory, product, product_category, vendor, market_date_info

-- Bài 1: Tính doanh thu (quantity * cost_to_customer_per_qty) theo từng ngày (market_date). Sắp xếp giảm dần doanh thu.
select market_date, sum(quantity * cost_to_customer_per_qty) as total_revenue
from customer_purchases
group by market_date
order by total_revenue desc;

-- Bài 2: Tính tổng doanh thu theo vendor (toàn bộ thời gian). Sắp xếp giảm dần doanh thu.
select vendor_id, sum(quantity * cost_to_customer_per_qty) as total_revenue
from customer_purchases
group by vendor_id
order by total_revenue desc;
-- Bài 3: Tính số giao dịch (đếm dòng) theo vendor mỗi ngày. Sắp xếp theo ngày tăng dần, rồi số giao dịch giảm dần.
select market_date, vendor_id, count(*) as total_transactions
from customer_purchases
group by market_date, vendor_id
order by market_date asc, total_transactions desc;
-- Bài 4: Tính doanh thu theo product_id mỗi ngày, chỉ hiển thị các sản phẩm có doanh thu > 100 trong ngày đó (HAVING).
select market_date, product_id, sum(quantity * cost_to_customer_per_qty) as total_revenue
from customer_purchases
group by market_date, product_id
having total_revenue > 100
order by market_date asc, total_revenue desc;
-- Bài 5: Tính doanh thu theo category (join product_category), sắp xếp category theo doanh thu giảm dần.
select product_category.product_category_name, sum(quantity * cost_to_customer_per_qty) as total_revenue
from customer_purchases
join product on customer_purchases.product_id = product.product_id
join product_category on product.product_category_id = product_category.product_category_id
group by product_category.product_category_name
order by total_revenue desc;
-- Bài 6: Tính tổng quantity bán ra theo product_id trong tháng 07/2019. Chỉ hiển thị các product có tổng quantity >= 20 (HAVING).
select product_id, sum(quantity) as total_quantity
from customer_purchases
where market_date between '2019-07-01' and '2019-07-31'
group by product_id
having total_quantity >= 20
order by total_quantity desc;
-- Bài 7: Tính AOV (average order value) theo ngày = tổng doanh thu / số giao dịch. Sắp xếp AOV giảm dần.
select market_date, sum(quantity * cost_to_customer_per_qty) / count(*) as aov
from customer_purchases
group by market_date
order by aov desc;
-- Bài 8: Tính doanh thu theo market_week, market_year (join market_date_info). Sắp xếp theo year, rồi week.
select market_date_info.market_week, market_date_info.market_year, sum(quantity * cost_to_customer_per_qty) as total_revenue
from customer_purchases
join market_date_info on customer_purchases.market_date = market_date_info.market_date
group by market_date_info.market_week, market_date_info.market_year
order by market_date_info.market_year asc, market_date_info.market_week asc;

-- Bài 9: Với mỗi vendor, liệt kê top 3 ngày doanh thu cao nhất (không dùng window function; gợi ý: subquery + ORDER BY + LIMIT per vendor là khó; có thể tạm chỉ yêu cầu top 1 nếu hệ không hỗ trợ).
select vendor_id, market_date, sum(quantity * cost_to_customer_per_qty) as total_revenue
from customer_purchases
group by vendor_id, market_date
order by total_revenue desc
limit 3;
-- Bài 10: Tính doanh thu theo giờ (bucket từng giờ từ transaction_time). Sắp xếp theo giờ tăng dần.

-- Bài 11: Tính doanh thu theo vendor và category. Chỉ hiển thị các cặp có doanh thu >= 500 (HAVING). Sắp xếp giảm dần doanh thu.

-- Bài 12: Tính số khách hàng duy nhất theo ngày (COUNT DISTINCT customer_id). Sắp xếp ngày tăng dần.

-- Bài 13: Tính doanh thu theo ZIP của khách (join customer và zip_data). Chỉ hiển thị ZIP có doanh thu >= 300.

-- Bài 14: Tính doanh thu theo season (market_season). Sắp xếp season theo doanh thu giảm dần.

-- Bài 15: Tính tổng quantity bán ra theo vendor trong điều kiện thời tiết mưa (market_rain_flag = 1). Sắp xếp giảm dần quantity.


