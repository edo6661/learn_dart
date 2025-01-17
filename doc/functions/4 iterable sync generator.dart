/*

  * yield adalah sebuah keyword di Dart yang digunakan dalam generator function untuk menghasilkan nilai secara bertahap. Ketika fungsi generator dijalankan, eksekusinya tidak langsung selesai, tetapi "berhenti" pada pernyataan yield dan mengembalikan nilai yang diberikan.
  ! yield digunakan untuk menghasilkan nilai bertahap dalam generator function.
  ! Iterable adalah koleksi data yang dapat diiterasi menggunakan loop (seperti for-in). Semua koleksi yang bisa di-loop (seperti List, Set) adalah turunan dari Iterable.


*/
// Synchronous generator function
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) {
    yield k++; // Menghasilkan nilai k, kemudian increment
  }
}

void main() {
  var naturals = naturalsTo(5); // Menghasilkan nilai dari 0 sampai 4
  print(naturals); // Output: (0, 1, 2, 3, 4)

  // Menelusuri hasil satu per satu
  for (var number in naturals) {
    print(number);
  }
  // Output:
  // 0
  // 1
  // 2
  // 3
  // 4
}
