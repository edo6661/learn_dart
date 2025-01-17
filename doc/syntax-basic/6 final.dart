// ignore_for_file: unused_local_variable

/*
  * Variabel yang dideklarasikan dengan final hanya bisa diubah sekali saja setelah diinisialisasi, dan setelah itu nilainya tetap.
  * final bersifat runtime constant artinya nilai variabel bisa dihitung atau ditentukan saat program berjalan, tapi setelah itu tidak bisa diubah lagi.

 */
void main() {
  final name = 'Bob'; // Tanpa anotasi tipe
  final String nickname = 'Bobby'; // Dengan anotasi tipe

// Tidak bisa diubah setelah diinisialisasi
  // name = 'Alice'; // Error: variabel final hanya bisa diubah sekali
}
