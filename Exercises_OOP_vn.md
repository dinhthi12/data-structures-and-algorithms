Bài 01 Sinh viên hãy lập trình hướng đối tượng bằng ngôn ngữ tự chọn để thực hiện các việc sau:

- Xây dựng lớp PhuongTienGiaoThong (phương tiện giao thông):
+) Thuộc tính: Hãng sản xuất (chuỗi ký tự), Tên phương tiện (chuỗi ký tự), Năm sản xuất (số nguyên), Vận tốc tối đa (float).
+) Phương thức: Hàm thiết lập,  hàm nhập, hàm xuất.
- Xây dựng lớp OTo (ô tô) kế thừa lớp PhuongTienGiaoThong bổ sung thêm:
Thuộc tính: Số chỗ ngồi (int), Kiểu động cơ (chuỗi ký tự).
Phương thức:
- Hàm thiết lập, hàm huỷ bỏ, hàm nhập, hàm xuất.
- Vận tốc cơ sở: được tính bằng vận tốc tối đa chia cho số bánh.
- Nạp chồng toán tử < (phương tiện giao thông có <Vận tốc cơ sở= nhỏ hơn thì nhỏ hơn).
Chương trình chính:

1) (3 điểm) Nhập từ bàn phím thông tin của một phương tiện giao thông PhuongTienGiaoThong.
2) (2 điểm) Hiển thị thông tin của phương tiện giao thông vừa nhập ra màn hình.
3) (2 điểm) Nhập thông tin cho n đối tượng OTO bao gồm: Hãng sản xuất, Tên phương tiện, Năm sản xuất, Vận tốc tối đa, số chỗ ngồi, kiểu động cơ.
4) (1 điểm) In ra màn hình thông tin của n đối tượng OTO cùng với vận tốc cơ sở.
5) (2 điểm) Sắp xếp danh sách các đối tượng OTO theo thứ tự giảm dần của vận tốc cơ sở.

Bài 02 Sinh viên hãy lập trình hướng đối tượng bằng ngôn ngữ tự chọn để thực hiện các việc sau:
Xây dựng lớp đối tượng NGUOI gồm:

- Thành phần dữ liệu (Không cho phép truy cập từ ngoài class):  mã định danh, họ tên người
- Phương thức: o Hàm khởi tạo, hàm huỷ, hàm nhập, hàm xuất.
- Xây dựng lớp đối tượng NHANVIEN kế thừa từ lớp NGUOI có thêm
o Thuộc tính thêm: năm sinh, hệ số lương
o Thuộc tính tĩnh: tiền phụ cấp
o Phương thức: hàm tạo đặt thông tin mặc định, hàm nhập, hàm xuất, hàm tính lương (=hệ số lương x 1550 + tiền phụ cấp)
o Hàm nạp chồng toán tử > để so sánh hai Nhân viên theo hệ số lương  (nhân viên có hệ số lương cao hơn sẽ lớn hơn).
Chương trình chính:

1) (3 điểm) Nhập từ bàn phím thông tin của một người bao gồm: mã định danh, họ tên người.
2) (2 điểm) Hiển thị thông tin người đó ra màn hình.
3) (2 điểm) Nhập thông tin cho n đối tượng NHANVIEN bao gồm: mã định danh, họ tên nhân viên, năm sinh, hệ số lương.
4) (1 điểm) In ra màn hình thông tin của n đối tượng NHANVIEN cùng với lương.
5) (2 điểm) Sắp xếp danh sách nhân viên theo thứ tự giảm dần theo hệ số lương. Hiển thị danh sách sau khi sắp.
