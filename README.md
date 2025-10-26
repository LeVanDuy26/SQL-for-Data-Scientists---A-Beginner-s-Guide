# SQL for Data Scientists - Ghi chép học tập

Đây là bộ ghi chép chi tiết khi đọc cuốn sách **"SQL for Data Scientists: A Beginner's Guide for Building Datasets for Analysis"** của tác giả **Renée M. P. Teate**. 

Ghi chép được tổ chức theo cấu trúc của sách gốc, tập trung vào việc áp dụng SQL trong quy trình Data Science và xây dựng các tập dữ liệu phân tích.

## Về cuốn sách

**SQL for Data Scientists** không chỉ dạy cú pháp SQL mà còn hướng dẫn cách tư duy như một Data Scientist khi làm việc với dữ liệu. Cuốn sách lấp đầy khoảng trống giữa việc tìm kiếm dữ liệu trong cơ sở dữ liệu và bắt đầu quá trình phân tích.

**Tác giả:** Renée M. P. Teate  
**Mục tiêu:** Xây dựng datasets cho phân tích và machine learning  
**Đối tượng:** Data Scientists, Data Analysts, người mới bắt đầu với SQL  

## Mục lục

### [1. Tổng quan và Mục đích sách](./1.%20T%E1%BB%95ng%20quan%20v%C3%A0%20M%E1%BB%A5c%20%C4%91%C3%ADch%20s%C3%A1ch/)
- [README.md](./1.%20T%E1%BB%95ng%20quan%20v%C3%A0%20M%E1%BB%A5c%20%C4%91%C3%ADch%20s%C3%A1ch/README.md)

### [2. Cơ sở dữ liệu và Công cụ](./2.%20C%C6%A1%20s%E1%BB%9F%20d%E1%BB%AF%20li%E1%BB%87u%20v%C3%A0%20C%C3%B4ng%20c%E1%BB%A5/)
- [2.1. Nguồn dữ liệu](./2.%20C%C6%A1%20s%E1%BB%9F%20d%E1%BB%AF%20li%E1%BB%87u%20v%C3%A0%20C%C3%B4ng%20c%E1%BB%A5/2.1.%20Ngu%E1%BB%93n%20d%E1%BB%AF%20li%E1%BB%87u.md)
- [2.2. Hệ thống RDBMS phổ biến](./2.%20C%C6%A1%20s%E1%BB%9F%20d%E1%BB%AF%20li%E1%BB%87u%20v%C3%A0%20C%C3%B4ng%20c%E1%BB%A5/2.2.%20H%E1%BB%87%20th%E1%BB%91ng%20RDBMS%20ph%E1%BB%95%20bi%E1%BA%BFn.md)
- [2.3. Cơ sở dữ liệu quan hệ](./2.%20C%C6%A1%20s%E1%BB%9F%20d%E1%BB%AF%20li%E1%BB%87u%20v%C3%A0%20C%C3%B4ng%20c%E1%BB%A5/2.3.%20C%C6%A1%20s%E1%BB%9F%20d%E1%BB%AF%20li%E1%BB%87u%20quan%20h%E1%BB%87.md)
- [2.4. Kho dữ liệu Chiều](./2.%20C%C6%A1%20s%E1%BB%9F%20d%E1%BB%AF%20li%E1%BB%87u%20v%C3%A0%20C%C3%B4ng%20c%E1%BB%A5/2.4.%20Kho%20d%E1%BB%AF%20li%E1%BB%87u%20Chi%E1%BB%81u.md)

### [3. Các khái niệm cơ bản về SQL](./3.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20c%C6%A1%20b%E1%BA%A3n%20v%E1%BB%81%20SQL/)
- [3.1. Cấu trúc SELECT cơ bản](./3.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20c%C6%A1%20b%E1%BA%A3n%20v%E1%BB%81%20SQL/3.1.%20C%E1%BA%A5u%20tr%C3%BAc%20SELECT%20c%C6%A1%20b%E1%BA%A3n.md)
- [3.2. Cấu trúc Where](./3.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20c%C6%A1%20b%E1%BA%A3n%20v%E1%BB%81%20SQL/3.2.%20C%E1%BA%A5u%20tr%C3%BAc%20Where.md)
- [3.3. Cấu trúc Group By](./3.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20c%C6%A1%20b%E1%BA%A3n%20v%E1%BB%81%20SQL/3.3.%20C%E1%BA%A5u%20tr%C3%BAc%20Group%20By.md)
- [3.4. Cấu trúc Having](./3.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20c%C6%A1%20b%E1%BA%A3n%20v%E1%BB%81%20SQL/3.4.%20C%E1%BA%A5u%20tr%C3%BAc%20Having.md)
- [3.5. Cấu trúc Order By](./3.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20c%C6%A1%20b%E1%BA%A3n%20v%E1%BB%81%20SQL/3.5.%20C%E1%BA%A5u%20tr%C3%BAc%20Order%20By.md)
- [3.6. Các phép tính Inline](./3.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20c%C6%A1%20b%E1%BA%A3n%20v%E1%BB%81%20SQL/3.6.%20C%C3%A1c%20ph%E1%BA%BFp%20t%C3%ADnh%20Inline.md)
- [3.7. LEFT JOIN](./3.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20c%C6%A1%20b%E1%BA%A3n%20v%E1%BB%81%20SQL/3.7.%20LEFT%20JOIN.md)
- [3.8. RIGHT JOIN](./3.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20c%C6%A1%20b%E1%BA%A3n%20v%E1%BB%81%20SQL/3.8.%20RIGHT%20JOIN.md)
- [3.9. INNER JOIN](./3.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20c%C6%A1%20b%E1%BA%A3n%20v%E1%BB%81%20SQL/3.9.%20INNER%20JOIN.md)
- [3.10. SELF JOIN](./3.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20c%C6%A1%20b%E1%BA%A3n%20v%E1%BB%81%20SQL/3.10.%20SELF%20JOIN.md)

### [4. Các khái niệm SQL nâng cao](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/)

#### [4.1. CASE Statements (Tính toán có điều kiện)](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.1.%20CASE%20Statements%20%28T%C3%ADnh%20to%C3%A1n%20c%C3%B3%20%C4%91i%E1%BB%81u%20ki%E1%BB%87n%29/)
- [4.1.1. CASE WHEN](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.1.%20CASE%20Statements%20%28T%C3%ADnh%20to%C3%A1n%20c%C3%B3%20%C4%91i%E1%BB%81u%20ki%E1%BB%87n%29/4.1.1.%20CASE%20WHEN.md)
- [4.1.2. Tạo Binary Flags](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.1.%20CASE%20Statements%20%28T%C3%ADnh%20to%C3%A1n%20c%C3%B3%20%C4%91i%E1%BB%81u%20ki%E1%BB%87n%29/4.1.2.%20T%E1%BA%A1o%20Binary%20Flags.md)
- [4.1.3. Binning giá trị liên tục](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.1.%20CASE%20Statements%20%28T%C3%ADnh%20to%C3%A1n%20c%C3%B3%20%C4%91i%E1%BB%81u%20ki%E1%BB%87n%29/4.1.3.%20Binning%20gi%C3%A1%20tr%E1%BB%8B%20li%C3%AAn%20t%E1%BB%A5c.md)
- [4.1.4. Mã hóa phân loại](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.1.%20CASE%20Statements%20%28T%C3%ADnh%20to%C3%A1n%20c%C3%B3%20%C4%91i%E1%BB%81u%20ki%E1%BB%87n%29/4.1.4.%20M%C3%A3%20h%C3%B3a%20ph%C3%A2n%20lo%E1%BA%A1i.md)

#### [4.2. Aggregation](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.2.%20Aggregation/)
- [4.2.1. Hàm tổng hợp (SUM, COUNT, MIN, MAX, AVG)](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.2.%20Aggregation/4.2.1.%20H%C3%A0m%20t%E1%BB%95ng%20h%E1%BB%A3p%20%28SUM%2C%20COUNT%2C%20MIN%2C%20MAX%2C%20AVG%29.md)
- [4.2.2. CASE bên trong hàm tổng hợp](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.2.%20Aggregation/4.2.2.%20CASE%20b%C3%AAn%20trong%20h%C3%A0m%20t%E1%BB%95ng%20h%E1%BB%A3p.md)

#### [4.3. Window Functions (Hàm Cửa sổ)](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.3.%20Windown%20Functions%20%28H%C3%A0m%20C%E1%BB%ADa%20s%E1%BB%95%29/)
- [4.3.1. OVER (PARTITION BY ... ORDER BY ...)](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.3.%20Windown%20Functions%20%28H%C3%A0m%20C%E1%BB%ADa%20s%E1%BB%95%29/4.3.1.%20OVER%20%28PARTITION%20BY%20...%20ORDER%20BY%20...%29.md)
- [4.3.2. ROW_NUMBER()](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.3.%20Windown%20Functions%20%28H%C3%A0m%20C%E1%BB%ADa%20s%E1%BB%95%29/4.3.2.%20ROW_NUMBER%28%29.md)
- [4.3.3. RANK(), DENSE_RANK()](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.3.%20Windown%20Functions%20%28H%C3%A0m%20C%E1%BB%ADa%20s%E1%BB%95%29/4.3.3.%20RANK%28%29%2C%20DENSE_RANK%28%29.md)
- [4.3.4. NTILE(n)](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.3.%20Windown%20Functions%20%28H%C3%A0m%20C%E1%BB%ADa%20s%E1%BB%95%29/4.3.4.%20NTILE%28n%29.md)
- [4.3.5. Hàm tổng hợp như Window](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.3.%20Windown%20Functions%20%28H%C3%A0m%20C%E1%BB%ADa%20s%E1%BB%95%29/4.3.5.%20H%C3%A0m%20t%E1%BB%95ng%20h%E1%BB%A3p%20nh%C6%B0%20Windown.md)
- [4.3.6. LAG(), LEAD()](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.3.%20Windown%20Functions%20%28H%C3%A0m%20C%E1%BB%ADa%20s%E1%BB%95%29/4.3.6.%20LAG%28%29%2C%20LEAD%28%29.md)
- [4.3.7. Subqueries](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.3.%20Windown%20Functions%20%28H%C3%A0m%20C%E1%BB%ADa%20s%E1%BB%95%29/4.3.7.%20Subqueries.md)

#### [4.4. Date & Time Functions](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.4.%20Date%20%26%20Time%20Functions/)
- [4.4.1. Extract, Date_Part](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.4.%20Date%20%26%20Time%20Functions/4.4.1.%20Extract%2C%20Date_Part.md)
- [4.4.2. DATE_ADD, DATE_SUB](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.4.%20Date%20%26%20Time%20Functions/4.4.2.%20DATE_ADD%2C%20DATE_SUB.md)
- [4.4.3. DATEDIFF, TIMESTAMPDIFF](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.4.%20Date%20%26%20Time%20Functions/4.4.3.%20DATEDIFF%2C%20TIMESTAMPDIFF.md)
- [4.4.4. CURDATE(), CURRENT_TIMESTAMP](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.4.%20Date%20%26%20Time%20Functions/4.4.4.%20CURDATE%28%29%2C%20CURRENT_TIMESTAMP.md)
- [4.4.5. MIN, MAX](./4.%20C%C3%A1c%20kh%C3%A1i%20ni%E1%BB%87m%20SQL%20n%C3%A2ng%20cao/4.4.%20Date%20%26%20Time%20Functions/4.4.5.%20MIN%2C%20MAX.md)

## Đặc điểm của ghi chép

- Có ví dụ cụ thể và giải thích chi tiết
- Tập trung vào ứng dụng thực tiễn trong Data Science
- Phân tích sâu các lưu ý quan trọng và lỗi phổ biến
- Giải thích rõ sự khác biệt giữa SQL cho Data Scientists vs Database Administrators
- Bao gồm hình ảnh minh họa để tăng tính trực quan

## Cách sử dụng

Ghi chép được tổ chức theo thứ tự logic từ cơ bản đến nâng cao. Bạn có thể:
- Đọc tuần tự từ đầu đến cuối
- Tham khảo từng phần riêng lẻ khi cần
- Sử dụng như tài liệu tham khảo nhanh cho SQL

## Giấy phép

MIT License - Có thể sử dụng tự do cho mục đích học tập và nghiên cứu.
