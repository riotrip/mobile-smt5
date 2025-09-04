void main() {
  // Null Safety
  String? alamat; // nullable
  print(alamat); // output: null

  // Late variable
  late String nama; // non-nullable
  nama = "Rio";
  print(nama); // output: Rio
}
