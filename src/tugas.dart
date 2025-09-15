void main() {
  String nama = "Rio Tri Prayogo";
  String nim = "2341720236";

  bool isPrime(int n) {
    if (n < 2) return false;
    for (int i = 2; i < n; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }

  for (int i = 0; i <= 201; i++) {
    print(isPrime(i) ? "$i. ($nama $nim)" : "$i.");
  }
}
