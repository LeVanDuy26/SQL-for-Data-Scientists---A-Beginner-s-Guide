# Farmer's Market Database - Dataset Thực hành SQL

## Giới thiệu Dataset

Farmer's Market Database là một cơ sở dữ liệu mô phỏng hoạt động của một chợ nông sản, được thiết kế đặc biệt để thực hành SQL và phân tích dữ liệu. Dataset này bao gồm 10 bảng chính mô tả đầy đủ quy trình từ quản lý nhà cung cấp, sản phẩm, khách hàng đến các giao dịch mua bán.

## Mục đích sử dụng

Dataset này được tạo ra để hỗ trợ:
- Thực hành các câu lệnh SQL từ cơ bản đến nâng cao
- Phân tích dữ liệu kinh doanh trong môi trường thực tế
- Xây dựng các tập dữ liệu phục vụ phân tích và machine learning
- Hiểu về thiết kế cơ sở dữ liệu quan hệ và mối quan hệ giữa các thực thể

## Cấu trúc Database

### 1. Bảng Thông tin Cơ bản

**vendor** - Thông tin nhà cung cấp
- vendor_id (INT, PK): ID nhà cung cấp
- vendor_name (VARCHAR): Tên nhà cung cấp
- vendor_type (VARCHAR): Loại hình kinh doanh
- vendor_owner_first_name (VARCHAR): Tên chủ sở hữu
- vendor_owner_last_name (VARCHAR): Họ chủ sở hữu

**product_category** - Danh mục sản phẩm
- product_category_id (INT, PK): ID danh mục
- product_category_name (VARCHAR): Tên danh mục sản phẩm

**product** - Thông tin sản phẩm
- product_id (INT, PK): ID sản phẩm
- product_name (VARCHAR): Tên sản phẩm
- product_size (VARCHAR): Kích thước sản phẩm
- product_qty_type (VARCHAR): Đơn vị tính
- product_category_id (INT, FK): ID danh mục sản phẩm

**customer** - Thông tin khách hàng
- customer_id (INT, PK): ID khách hàng
- customer_first_name (VARCHAR): Tên khách hàng
- customer_last_name (VARCHAR): Họ khách hàng
- customer_zip (VARCHAR): Mã zip

**booth** - Thông tin gian hàng
- booth_number (INT, PK): Số gian hàng
- booth_price_level (VARCHAR): Mức giá thuê gian hàng
- booth_description (VARCHAR): Mô tả gian hàng
- booth_type (VARCHAR): Loại gian hàng

### 2. Bảng Dữ liệu Tham chiếu

**zip_data** - Dữ liệu nhân khẩu học theo mã zip
- zip_code_5 (CHAR, PK): Mã zip 5 số
- median_household_income (FLOAT): Thu nhập trung bình hộ gia đình
- percent_high_income (FLOAT): Tỷ lệ hộ có thu nhập cao
- percent_under_18 (FLOAT): Tỷ lệ dân số dưới 18 tuổi
- percent_over_65 (FLOAT): Tỷ lệ dân số trên 65 tuổi
- people_per_sq_mile (FLOAT): Mật độ dân số
- latitude (FLOAT): Vĩ độ
- longitude (FLOAT): Kinh độ

**market_date_info** - Thông tin ngày chợ
- market_date (DATE, PK): Ngày chợ
- market_day (VARCHAR): Ngày trong tuần
- market_week (VARCHAR): Tuần của năm
- market_year (VARCHAR): Năm
- market_start_time (VARCHAR): Giờ bắt đầu
- market_end_time (VARCHAR): Giờ kết thúc
- special_notes (BLOB): Ghi chú đặc biệt
- market_season (VARCHAR): Mùa
- market_min_temp (VARCHAR): Nhiệt độ tối thiểu
- market_max_temp (VARCHAR): Nhiệt độ tối đa
- market_rain_flag (INT): Cờ báo mưa (0/1)
- market_snow_flag (INT): Cờ báo tuyết (0/1)

### 3. Bảng Giao dịch và Quan hệ

**vendor_inventory** - Hàng tồn kho của nhà cung cấp
- market_date (DATE, PK): Ngày chợ
- vendor_id (INT, PK): ID nhà cung cấp
- product_id (INT, PK): ID sản phẩm
- quantity (DECIMAL): Số lượng tồn kho
- original_price (DECIMAL): Giá gốc

**customer_purchases** - Giao dịch mua hàng
- product_id (INT, PK): ID sản phẩm
- vendor_id (INT, PK): ID nhà cung cấp
- market_date (DATE, PK): Ngày chợ
- customer_id (INT, PK): ID khách hàng
- quantity (DECIMAL): Số lượng mua
- cost_to_customer_per_qty (DECIMAL): Giá bán cho khách hàng
- transaction_time (TIME): Thời gian giao dịch

**vendor_booth_assignments** - Phân công gian hàng
- vendor_id (INT, PK): ID nhà cung cấp
- booth_number (INT, PK): Số gian hàng
- market_date (DATE, PK): Ngày chợ

## Mối quan hệ giữa các bảng

- Một nhà cung cấp có thể có nhiều sản phẩm tồn kho và nhiều giao dịch bán hàng
- Một sản phẩm có thể được nhiều nhà cung cấp bán và có nhiều giao dịch
- Một khách hàng có thể có nhiều giao dịch mua hàng
- Một ngày chợ có thể có nhiều giao dịch, tồn kho và phân công gian hàng
- Một danh mục sản phẩm có thể chứa nhiều sản phẩm
- Một gian hàng có thể được phân công cho nhiều nhà cung cấp
- Một mã zip có thể có nhiều khách hàng

## Các bài tập và phân tích có thể thực hiện

### Phân tích Doanh số
- Tính tổng doanh thu theo nhà cung cấp, sản phẩm, danh mục
- Phân tích xu hướng bán hàng theo thời gian
- Xác định sản phẩm bán chạy nhất
- So sánh hiệu suất giữa các nhà cung cấp

### Phân tích Khách hàng
- Phân khúc khách hàng theo mã zip và thu nhập
- Phân tích hành vi mua sắm của khách hàng
- Xác định khách hàng VIP
- Phân tích tần suất mua hàng

### Phân tích Hoạt động
- Quản lý hàng tồn kho và tỷ lệ bán được
- Phân tích tác động của thời tiết đến doanh số
- Đánh giá hiệu quả phân công gian hàng
- Phân tích theo mùa vụ

### Phân tích Nâng cao
- Xây dựng báo cáo tổng hợp với Window Functions
- Tạo các chỉ số KPI cho từng nhà cung cấp
- Phân tích tương quan giữa các yếu tố
- Dự đoán xu hướng bán hàng

## Cách sử dụng Dataset

1. **Bắt đầu với truy vấn đơn giản**: Khám phá dữ liệu cơ bản với SELECT và WHERE
2. **Thực hành JOIN**: Kết hợp dữ liệu từ nhiều bảng
3. **Sử dụng GROUP BY**: Tổng hợp và phân nhóm dữ liệu
4. **Áp dụng Window Functions**: Tính toán phức tạp và xếp hạng
5. **Xây dựng Dataset phân tích**: Tạo các bảng tổng hợp cho báo cáo

## Lưu ý quan trọng

- Dataset được thiết kế để phản ánh thực tế hoạt động chợ nông sản
- Dữ liệu có thể chứa các trường hợp edge case để thực hành xử lý
- Khuyến khích thử nghiệm với các truy vấn phức tạp và tối ưu hóa
- Sử dụng LIMIT khi khám phá dữ liệu để tránh kết quả quá lớn

Chúc bạn có những trải nghiệm học tập hiệu quả với Farmer's Market Database!
