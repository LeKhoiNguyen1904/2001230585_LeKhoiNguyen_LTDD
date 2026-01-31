import 'dart:io';

void main() {
  stdout.write("Nhập số nguyên dương > 10: ");
  int n = int.parse(stdin.readLineSync()!);

  String s = n.toString();

  // a. Số chữ số
  print("Số chữ số: ${s.length}");

  // b. Tổng chữ số
  int tong = 0;
  for (int i = 0; i < s.length; i++) {
    tong += int.parse(s[i]);
  }
  print("Tổng các chữ số: $tong");

  // c. Có chữ số lẻ không
  bool coSoLe = false;
  for (int i = 0; i < s.length; i++) {
    if (int.parse(s[i]) % 2 != 0) {
      coSoLe = true;
      break;
    }
  }

  if (coSoLe) {
    print("Có chứa chữ số lẻ");
  } else {
    print("Không chứa chữ số lẻ");
  }
}
