import 'dart:io';

void main() {
  stdout.write("Nhập số que kem (>0): ");
  int soLuong = int.parse(stdin.readLineSync()!);

  stdout.write("Nhập giá tiền 1 que: ");
  double gia = double.parse(stdin.readLineSync()!);

  double tongTien = soLuong * gia;
  double giamGia = 0;

  if (soLuong > 10) {
    giamGia = 0.10;
  } else if (soLuong >= 5) {
    giamGia = 0.05;
  }

  double tienPhaiTra = tongTien * (1 - giamGia);

  print("Tiền phải trả: $tienPhaiTra");
}
