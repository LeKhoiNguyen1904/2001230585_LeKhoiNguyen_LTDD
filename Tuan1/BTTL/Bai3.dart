import 'dart:io';

bool laSoNguyenTo(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  List<int> ds = [];

  stdout.write("Nhập số phần tử: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Nhập phần tử thứ ${i + 1}: ");
    ds.add(int.parse(stdin.readLineSync()!));
  }

  // a. Xuất danh sách
  print("Danh sách: $ds");

  // b. Tổng phần tử
  int tong = ds.reduce((a, b) => a + b);
  print("Tổng các phần tử: $tong");

  // c. Số nguyên tố
  print("Các số nguyên tố:");
  for (var x in ds) {
    if (laSoNguyenTo(x)) {
      print(x);
    }
  }

  // d. Tìm hoặc thêm giá trị
  stdout.write("Nhập giá trị cần kiểm tra: ");
  int x = int.parse(stdin.readLineSync()!);

  int viTri = ds.indexOf(x);

  if (viTri == -1) {
    ds.insert(0, x);
    print("Không có trong danh sách. Đã thêm vào đầu danh sách.");
  } else {
    print("Có trong danh sách tại vị trí: $viTri");
  }

  print("Danh sách hiện tại: $ds");
}
