import 'dart:io';

void main() {
  // a. Nhập và xuất chuỗi
  stdout.write("Nhập chuỗi: ");
  String s = stdin.readLineSync()!;
  print("Chuỗi vừa nhập: $s");

  // b. Đếm nguyên âm
  String vowels = "aeiouAEIOUăâêôơưĂÂÊÔƠƯ";
  int dem = 0;
  for (int i = 0; i < s.length; i++) {
    if (vowels.contains(s[i])) dem++;
  }
  print("Số nguyên âm: $dem");

  // c. Đếm số từ
  List<String> words =
      s.trim().split(RegExp(r'\s+')).where((w) => w.isNotEmpty).toList();
  print("Số từ: ${words.length}");

  // d. Đối xứng
  String rev = s.split('').reversed.join();
  if (s == rev) {
    print("Chuỗi đối xứng");
  } else {
    print("Chuỗi không đối xứng");
  }

  // e. Đảo ngược từ
  String daoTu = words.reversed.join(" ");
  print("Đảo ngược từ: $daoTu");
}
