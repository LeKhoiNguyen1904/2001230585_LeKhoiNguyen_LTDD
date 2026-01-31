import 'dart:io';
import 'dart:math';

void main() {
  Random rd = Random();

  // Tạo danh sách ngẫu nhiên
  stdout.write("Nhập số lượng phần tử: ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> ds = List.generate(n, (_) => rd.nextInt(96) + 5); // 5..100

  // a. Xuất danh sách
  print("Danh sách: $ds");

  // b. TBC số lẻ
  var soLe = ds.where((x) => x % 2 != 0).toList();
  if (soLe.isEmpty) {
    print("Danh sách không có số lẻ");
  } else {
    double tbc = soLe.reduce((a, b) => a + b) / soLe.length;
    print("TBC số lẻ: $tbc");
  }

  // c. Đối xứng
  bool doiXung = true;
  for (int i = 0; i < ds.length ~/ 2; i++) {
    if (ds[i] != ds[ds.length - 1 - i]) {
      doiXung = false;
      break;
    }
  }
  print(doiXung ? "Danh sách đối xứng" : "Không đối xứng");

  // d. Tăng dần
  bool tangDan = true;
  for (int i = 0; i < ds.length - 1; i++) {
    if (ds[i] > ds[i + 1]) {
      tangDan = false;
      break;
    }
  }
  print(tangDan ? "Danh sách tăng dần" : "Không tăng dần");

  // e. Max
  int maxVal = ds.reduce((a, b) => a > b ? a : b);
  print("Phần tử lớn nhất: $maxVal");

  // f. Số chẵn lớn nhất
  var soChan = ds.where((x) => x % 2 == 0).toList();
  if (soChan.isEmpty) {
    print("Danh sách không có số chẵn");
  } else {
    int maxChan = soChan.reduce((a, b) => a > b ? a : b);
    print("Số chẵn lớn nhất: $maxChan");
  }

  // g. Tìm và xóa
  stdout.write("Nhập giá trị cần tìm: ");
  int k = int.parse(stdin.readLineSync()!);

  if (!ds.contains(k)) {
    print("Không tìm thấy");
  } else {
    ds.removeWhere((x) => x == k);
    print("Đã xóa các phần tử = $k");
  }

  print("Danh sách sau cùng: $ds");
}
