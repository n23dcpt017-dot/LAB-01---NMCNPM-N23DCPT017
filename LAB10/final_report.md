

\## 📄 Lab 10 – Báo cáo tổng hợp \& Demo cuối kỳ



\### 1. Giới thiệu ATM Mini-Project



\* \*\*Tên dự án\*\*: ATM System

\* \*\*Mục tiêu\*\*: Xây dựng mô phỏng hệ thống rút tiền ATM, bao gồm đăng nhập, kiểm tra số dư, rút tiền, chuyển khoản, và quản lý bảo trì.

\* \*\*Công cụ sử dụng\*\*:



&nbsp; \* UML: StarUML / draw.io

&nbsp; \* Database: MySQL

&nbsp; \* Code: Java + MySQL Connector

&nbsp; \* Testing: JUnit + Selenium

&nbsp; \* Quản lý dự án: Jira (Scrum Agile)

&nbsp; \* GitHub để quản lý source code và báo cáo



---



\### 2. Mô hình UML



\#### 2.1 Use Case Diagram (Lab 02)



\* Các chức năng chính:



&nbsp; \* Đăng nhập

&nbsp; \* Rút tiền

&nbsp; \* Kiểm tra số dư

&nbsp; \* Chuyển khoản

&nbsp; \* Bảo trì ATM



\*(ảnh Use Case vẽ bằng StarUML / draw.io)\*



\#### 2.2 Sequence Diagram (Lab 03)



\* Luồng xử lý đăng nhập

\* Luồng xử lý rút tiền



\*(ảnh sequence diagram)\*



\#### 2.3 Class Diagram (Lab 06)



\* Các lớp chính: `ATM`, `Account`, `Card`, `Transaction`, `DatabaseConnector`



\*(ảnh class diagram)\*



---



\### 3. Cơ sở dữ liệu \& ERD (Lab 05)



\* \*\*Bảng `accounts`\*\*: lưu thông tin tài khoản + số dư

\* \*\*Bảng `cards`\*\*: liên kết tài khoản với số thẻ, PIN hash

\* \*\*Bảng `transactions`\*\*: ghi log giao dịch (rút, chuyển khoản, kiểm tra số dư)



\*(ảnh ERD + script SQL tạo bảng)\*



---



\### 4. Code minh hoạ (Lab 07)



\* \*\*Module Login\*\*: form login kết nối DB (Lab 04)

\* \*\*Module Withdraw\*\*: hàm `withdraw()` kiểm tra số dư, cập nhật DB, ghi transaction log



\*(ảnh chụp màn hình chạy thành công rút tiền)\*



---



\### 5. Kiểm thử (Lab 08)



\* \*\*Unit test\*\*: kiểm tra `verify\_pin()`, `withdraw()` với các trường hợp:



&nbsp; \* PIN đúng/sai

&nbsp; \* Số dư đủ/không đủ

\* \*\*Integration test\*\*: Form login với Selenium



&nbsp; \* Đăng nhập thành công

&nbsp; \* Đăng nhập sai mật khẩu

&nbsp; \* Ô input trống



\*(ảnh màn hình chạy test JUnit + Selenium)\*



---



\### 6. Quản lý dự án Jira (Lab 09)



\* \*\*Epic\*\*: ATM Basic Functions

\* \*\*User Stories\*\*: rút tiền, kiểm tra số dư, chuyển khoản, bảo trì

\* \*\*Sprint 1\*\*: từ 04/10 – 18/10 (2 tuần)



&nbsp; \* Hoàn thành: rút tiền + kiểm tra số dư

\* \*\*Evidence\*\*: Backlog, Sprint Board, Burndown Chart



\*(ảnh chụp màn hình Jira)\*



---



\### 7. Demo



\* \*\*Kịch bản demo trên lớp\*\*:



&nbsp; 1. Đăng nhập bằng Form Login (Lab 04).

&nbsp; 2. Thực hiện chức năng Rút tiền (Lab 07) → số dư cập nhật trong DB.

&nbsp; 3. Trình bày Jira Board \& Sprint Report (Lab 09).



---



\### 8. Kết luận \& Định hướng mở rộng



\* \*\*Kết quả đạt được\*\*:



&nbsp; \* Tích hợp đầy đủ các module đã làm từ Lab 02 → Lab 09.

&nbsp; \* Xây dựng mô hình quản lý dự án theo Agile.

&nbsp; \* Chạy demo thành công: Login + Withdraw.



\* \*\*Hướng mở rộng\*\*:



&nbsp; \* Bổ sung chức năng gửi tiết kiệm, thanh toán hóa đơn.

&nbsp; \* Nâng cấp bảo mật với OTP / vân tay.

&nbsp; \* Viết thêm báo cáo log chi tiết + dashboard quản lý ATM.





