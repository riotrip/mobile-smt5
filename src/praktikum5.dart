(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  print(tukar((1, 2)));

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Rio Tri Prayogo', 2341720236);
  print(mahasiswa);

  var mahasiswa2 = ('Rio Tri Prayogo', a: 2341720236, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
